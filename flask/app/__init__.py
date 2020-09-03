import os
from flask import Flask, render_template, request


def create_app(test_config=None):
    # create and configure the app
    app = Flask(
        __name__,
        static_folder="static",
        instance_relative_config=True,
    )
    app.config.from_mapping(
        SECRET_KEY="dev",
    )

    @app.route("/")
    def landing():
        return render_template("index.html")

    @app.route("/some-endpoint")
    def endpoint():
        return render_template("index.html")

    @app.route("/some-endpoint")
    def endpoint_variable():
        return render_template("index.html")

    return app
