from fastapi import FastAPI
from uuid import UUID

app = FastAPI()

@app.post("/v1/apply_job_position/")
async def apply_job_position(user_id: UUID, job_opening_id: UUID):
    if user_id and job_opening_id:
        return True
    else:
        return False