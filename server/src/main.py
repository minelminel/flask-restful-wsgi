from flask import Blueprint, jsonify
from flask_restful import Api, Resource

bp = Blueprint("api", __name__)
api = Api(bp)

class IndexResource(Resource):
    def get(self):
        return jsonify(message="hi")

api.add_resource(IndexResource, "/")
