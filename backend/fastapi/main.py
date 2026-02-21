from fastapi import FastAPI, HTTPException
import logging

app = FastAPI()

logging.basicConfig(level=logging.INFO)

@app.get("/reconcile")
async def reconcile():
    logging.info("Starting reconciliation process")
    try:
        # Core logic to start reconciliation
        return {"status": "success", "message": "Reconciliation completed"}
    except Exception as e:
        logging.error("Error during reconciliation: %s", str(e))
        raise HTTPException(status_code=500, detail="Reconciliation failed")