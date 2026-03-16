from fastapi import APIRouter
from pydantic import BaseModel
from ..db.connection import get_db_connection

router = APIRouter()

class SQLQuery(BaseModel):
    query: str

@router.post("/execute")
async def execute_sql(payload: SQLQuery):
    """Execute a SQL query and return the results"""
    sql = payload.query.strip()
    if not sql:
        return {"type": "message", "status": "error", "text": "Empty query"}

    try:
        conn = get_db_connection()
        cursor = conn.cursor()
        cursor.execute(sql)

        # Check if the query returns rows (SELECT, etc.)
        if cursor.description:
            columns = [desc[0] for desc in cursor.description]
            rows = []
            for row in cursor.fetchall():
                rows.append([row[col] for col in columns])
            conn.close()
            return {
                "type": "table",
                "columns": columns,
                "rows": rows,
            }
        else:
            # DML/DDL statement
            affected = cursor.rowcount
            conn.commit()
            conn.close()
            return {
                "type": "message",
                "status": "success",
                "text": f"Query executed successfully. Rows affected: {affected}",
            }
    except Exception as e:
        return {
            "type": "message",
            "status": "error",
            "text": str(e),
        }
