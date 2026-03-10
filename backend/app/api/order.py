from fastapi import APIRouter, HTTPException
from app.schemas.order import Order, OrderCreate
from app.services.order_service import OrderService

router = APIRouter()
order_service = OrderService()

@router.get("/", response_model=list[Order])
async def get_orders():
    """Get all orders"""
    return await order_service.get_all_orders()

@router.get("/{order_id}", response_model=Order)
async def get_order(order_id: int):
    """Get order by ID"""
    order = await order_service.get_order_by_id(order_id)
    if not order:
        raise HTTPException(status_code=404, detail="Order not found")
    return order

@router.post("/", response_model=Order)
async def create_order(order: OrderCreate):
    """Create new order"""
    return await order_service.create_order(order)
