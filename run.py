from application import create_app
from settings import DEBUG, PORT

app = create_app('settings')

if DEBUG == 'on':
    app.run(port=PORT)
