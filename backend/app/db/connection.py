import pymssql
from ..core.config import settings

def get_db_connection():
    """Create and return a database connection to SQL Server"""
    conn = pymssql.connect(
        server=settings.DB_HOST,
        port=settings.DB_PORT,
        database=settings.DB_NAME,
        user=settings.DB_USER,
        password=settings.DB_PASSWORD,
        as_dict=True
    )
    return conn

def test_connection():
    """Test database connection"""
    try:
        conn = get_db_connection()
        cursor = conn.cursor()
        cursor.execute("SELECT 1 AS test")
        result = cursor.fetchone()
        cursor.close()
        conn.close()
        return {"status": "connected", "result": result}
    except Exception as e:
        return {"status": "failed", "error": str(e)}
