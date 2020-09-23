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
        return render_template("different_view.html")

    @app.route("/some-endpoint/<some_value>")
    def endpoint_variable(some_value):
        return render_template("different_view.html", n_banana=some_value)

    return app
