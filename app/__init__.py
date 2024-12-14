from flask import Flask

def create_app():
    app = Flask(__name__)
    app.config['SECRET_KEY'] = 'your_secret_key'

    from .routes import app
    app.register_blueprint(app)

    return app
