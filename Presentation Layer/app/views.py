from app import app

@app.route('/')
def home():
    return "Welcome to CliPi 0.1 Alpha"
