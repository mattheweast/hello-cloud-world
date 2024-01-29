from flask import Flask
hellocloudworld = Flask(__name__)
@hellocloudworld.route("/")
def run():
    return "Hello Cloud World"

if __name__ == "__main__":
    hellocloudworld.run(host="0.0.0.0", port=int("3000"), debug=True)