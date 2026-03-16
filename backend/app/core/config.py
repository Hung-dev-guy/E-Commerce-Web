from pydantic_settings import BaseSettings
from typing import Optional

class Settings(BaseSettings):
    # Database settings
    DB_HOST: str = "127.0.0.1"
    DB_PORT: int = 1433
    DB_NAME: str = "ECommerceTech"
    DB_USER: str = "sa"
    DB_PASSWORD: str = "hUnG2#45@"
    
    # API settings
    API_V1_STR: str = "/api/v1"
    PROJECT_NAME: str = "E-commerce API"
    
    # Security
    SECRET_KEY: str = "your-secret-key-here-change-in-production"
    ALGORITHM: str = "HS256"
    ACCESS_TOKEN_EXPIRE_MINUTES: int = 30

    class Config:
        env_file = ".env"
        case_sensitive = True

settings = Settings()
