from ..db.connection import get_db_connection
from ..schemas.order import Order, OrderCreate
from typing import List, Optional
import os

class OrderRepository:
    def __init__(self):
        self.queries_path = os.path.join(os.path.dirname(__file__), '..', 'db', 'queries')

    def _load_query(self, filename: str) -> str:
        """Load SQL query from file"""
        with open(os.path.join(self.queries_path, filename), 'r') as f:
            return f.read()

    async def get_all(self) -> List[Order]:
        """Get all orders"""
        conn = get_db_connection()
        cursor = conn.cursor()
        
        query = self._load_query('order.sql')
        cursor.execute(query.split(';')[0])  # SELECT all orders
        
        rows = cursor.fetchall()
        cursor.close()
        conn.close()
        
        return [Order(**dict(row)) for row in rows]

    async def get_by_id(self, order_id: int) -> Optional[Order]:
        """Get order by ID"""
        conn = get_db_connection()
        cursor = conn.cursor()
        
        cursor.execute("SELECT * FROM orders WHERE id = %s", (order_id,))
        row = cursor.fetchone()
        
        cursor.close()
        conn.close()
        
        return Order(**dict(row)) if row else None

    async def create(self, order: OrderCreate) -> Order:
        """Create new order"""
        conn = get_db_connection()
        cursor = conn.cursor()
        
        # Insert order
        cursor.execute(
            """
            INSERT INTO orders (user_id, total_amount, status)
            VALUES (%s, %s, %s)
            RETURNING *
            """,
            (order.user_id, order.total_amount, order.status)
        )
        
        row = cursor.fetchone()
        order_id = row['id']
        
        # Insert order items
        for item in order.items:
            cursor.execute(
                """
                INSERT INTO order_items (order_id, product_id, quantity, price)
                VALUES (%s, %s, %s, %s)
                """,
                (order_id, item.product_id, item.quantity, item.price)
            )
        
        conn.commit()
        cursor.close()
        conn.close()
        
        return Order(**dict(row))

    async def update_status(self, order_id: int, status: str) -> Optional[Order]:
        """Update order status"""
        conn = get_db_connection()
        cursor = conn.cursor()
        
        cursor.execute(
            """
            UPDATE orders
            SET status = %s
            WHERE id = %s
            RETURNING *
            """,
            (status, order_id)
        )
        
        row = cursor.fetchone()
        conn.commit()
        cursor.close()
        conn.close()
        
        return Order(**dict(row)) if row else None
