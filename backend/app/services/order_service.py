from app.repositories.order_repo import OrderRepository
from app.schemas.order import Order, OrderCreate
from typing import List, Optional

class OrderService:
    def __init__(self):
        self.repo = OrderRepository()

    async def get_all_orders(self) -> List[Order]:
        """Get all orders"""
        return await self.repo.get_all()

    async def get_order_by_id(self, order_id: int) -> Optional[Order]:
        """Get order by ID"""
        return await self.repo.get_by_id(order_id)

    async def create_order(self, order: OrderCreate) -> Order:
        """Create new order"""
        return await self.repo.create(order)

    async def update_order_status(self, order_id: int, status: str) -> Optional[Order]:
        """Update order status"""
        return await self.repo.update_status(order_id, status)
