from app.ml_model import train_model
import time

def retrain_periodically(interval=3600):
    """Retrain the model periodically (default: every 1 hour)."""
    while True:
        print("Retraining the model...")
        train_model()
        print("Retraining complete. Waiting for the next cycle...")
        time.sleep(interval)

if __name__ == "__main__":
    retrain_periodically(interval=3600)
