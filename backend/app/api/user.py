from fastapi import APIRouter, HTTPException
from ..schemas.user import User, UserCreate

router = APIRouter()

@router.get("/", response_model=list[User])
async def get_users():
    """Get all users"""
    # TODO: Implement user service
    return []

@router.get("/{user_id}", response_model=User)
async def get_user(user_id: int):
    """Get user by ID"""
    # TODO: Implement user service
    raise HTTPException(status_code=404, detail="User not found")

@router.post("/", response_model=User)
async def create_user(user: UserCreate):
    """Create new user"""
    # TODO: Implement user service
    pass
