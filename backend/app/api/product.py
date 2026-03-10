from fastapi import APIRouter, HTTPException
from app.schemas.product import Product, ProductCreate
from app.services.product_service import ProductService

router = APIRouter()
product_service = ProductService()

@router.get("/", response_model=list[Product])
async def get_products():
    """Get all products"""
    return await product_service.get_all_products()

@router.get("/{product_id}", response_model=Product)
async def get_product(product_id: int):
    """Get product by ID"""
    product = await product_service.get_product_by_id(product_id)
    if not product:
        raise HTTPException(status_code=404, detail="Product not found")
    return product

@router.post("/", response_model=Product)
async def create_product(product: ProductCreate):
    """Create new product"""
    return await product_service.create_product(product)
