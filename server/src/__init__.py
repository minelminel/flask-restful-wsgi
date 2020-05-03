from flask import Flask

from .main import bp

app = Flask(__name__)
app.register_blueprint(bp, url_prefix="/api/")
