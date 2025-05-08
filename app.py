from flask import Flask

app = Flask(__name__)

@app.route('/')
def home():
    return ('Steven Fischer'
            '3rd year BSIT'
            'System Integration and Architecture')

if __name__ == '__main__':
    app.run(debug=True)
