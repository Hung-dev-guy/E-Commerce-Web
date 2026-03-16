from ..repositories.product_repo import ProductRepository
from ..schemas.product import Product, ProductCreate
from typing import List, Optional

class ProductService:
    def __init__(self):
        self.repo = ProductRepository()

    async def get_all_products(self) -> List[Product]:
        """Get all products"""
        return await self.repo.get_all()

    async def get_product_by_id(self, product_id: int) -> Optional[Product]:
        """Get product by ID"""
        return await self.repo.get_by_id(product_id)

    async def create_product(self, product: ProductCreate) -> Product:
        """Create new product"""
        return await self.repo.create(product)

    async def update_product(self, product_id: int, product: ProductCreate) -> Optional[Product]:
        """Update product"""
        return await self.repo.update(product_id, product)

    async def delete_product(self, product_id: int) -> bool:
        """Delete product"""
        return await self.repo.delete(product_id)
