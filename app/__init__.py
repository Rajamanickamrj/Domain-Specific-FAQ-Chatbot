from flask import Flask
import os

def create_app():
    app = Flask(__name__, template_folder=os.path.abspath("./templates"),static_folder=os.path.abspath("./static"))
    app.config['SECRET_KEY'] = '8c89b4ad4f50eae5c45010d2b9bb7f6f3abf4c9c20c2fa16'

    from .routes import main
    app.register_blueprint(main)

    return app
