from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware
from app.api import product, order, user

app = FastAPI(title="E-commerce API")

# CORS middleware
app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

# Include routers
app.include_router(product.router, prefix="/api/products", tags=["products"])
app.include_router(order.router, prefix="/api/orders", tags=["orders"])
app.include_router(user.router, prefix="/api/users", tags=["users"])

@app.get("/")
async def root():
    return {"message": "E-commerce API"}
