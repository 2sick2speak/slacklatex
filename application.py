from flask import Flask

def create_app(config_filename):
    app = Flask(__name__)
    app.config.from_object(config_filename)

    # import blueprints
    from views import bots_app

    # register blueprints
    app.register_blueprint(bots_app)

    return app