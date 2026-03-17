from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware
from fastapi.staticfiles import StaticFiles
from .api import sql
from .db.connection import test_connection
import os

app = FastAPI(title="SQL Playground API")

# CORS middleware
app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

# Include routers
app.include_router(sql.router, prefix="/api/sql", tags=["sql"])

# Serve frontend static files
frontend_dir = os.path.join(os.path.dirname(__file__), "..", "..", "frontend")
frontend_dir = os.path.abspath(frontend_dir)
app.mount("/static", StaticFiles(directory=frontend_dir, html=True), name="frontend")

@app.get("/")
async def root():
    return {"message": "E-commerce API", "playground": "/static/sql-playground.html"}

@app.get("/health")
async def health_check():
    """Test database connection"""
    db_status = test_connection()
    return {"api": "running", "database": db_status}
