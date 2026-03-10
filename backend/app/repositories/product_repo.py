from app.db.connection import get_db_connection
from app.schemas.product import Product, ProductCreate
from typing import List, Optional
import os

class ProductRepository:
    def __init__(self):
        self.queries_path = os.path.join(os.path.dirname(__file__), '..', 'db', 'queries')

    def _load_query(self, filename: str) -> str:
        """Load SQL query from file"""
        with open(os.path.join(self.queries_path, filename), 'r') as f:
            return f.read()

    async def get_all(self) -> List[Product]:
        """Get all products"""
        conn = get_db_connection()
        cursor = conn.cursor()
        
        query = self._load_query('product.sql')
        cursor.execute(query.split(';')[0])  # SELECT all products
        
        rows = cursor.fetchall()
        cursor.close()
        conn.close()
        
        return [Product(**dict(row)) for row in rows]

    async def get_by_id(self, product_id: int) -> Optional[Product]:
        """Get product by ID"""
        conn = get_db_connection()
        cursor = conn.cursor()
        
        cursor.execute("SELECT * FROM products WHERE id = %s", (product_id,))
        row = cursor.fetchone()
        
        cursor.close()
        conn.close()
        
        return Product(**dict(row)) if row else None

    async def create(self, product: ProductCreate) -> Product:
        """Create new product"""
        conn = get_db_connection()
        cursor = conn.cursor()
        
        cursor.execute(
            """
            INSERT INTO products (name, description, price, stock, category)
            VALUES (%s, %s, %s, %s, %s)
            RETURNING *
            """,
            (product.name, product.description, product.price, product.stock, product.category)
        )
        
        row = cursor.fetchone()
        conn.commit()
        cursor.close()
        conn.close()
        
        return Product(**dict(row))

    async def update(self, product_id: int, product: ProductCreate) -> Optional[Product]:
        """Update product"""
        conn = get_db_connection()
        cursor = conn.cursor()
        
        cursor.execute(
            """
            UPDATE products
            SET name = %s, description = %s, price = %s, stock = %s, category = %s
            WHERE id = %s
            RETURNING *
            """,
            (product.name, product.description, product.price, product.stock, product.category, product_id)
        )
        
        row = cursor.fetchone()
        conn.commit()
        cursor.close()
        conn.close()
        
        return Product(**dict(row)) if row else None

    async def delete(self, product_id: int) -> bool:
        """Delete product"""
        conn = get_db_connection()
        cursor = conn.cursor()
        
        cursor.execute("DELETE FROM products WHERE id = %s", (product_id,))
        deleted = cursor.rowcount > 0
        
        conn.commit()
        cursor.close()
        conn.close()
        
        return deleted
