from flask import Flask, request
import os

app = Flask(__name__)


@app.route('/')
def hello():
    name = request.args.get('name', 'World')

    # Simple "Work" loop for load simulation
    count = 0
    for i in range(10000):
        count += i * i

    return f"Hello {name}! I am running on pod: {os.uname()[1]}\n"


if __name__ == "__main__":
    app.run(host='0.0.0.0', port=8080)