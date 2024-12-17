from flask import Flask, render_template

app = Flask(__name__)

@app.route('/index')
def index():
    return render_template('index.html')

@app.route('/about')
def about():
    return render_template('about.html')


@app.route('/test')
def test1():
    return render_template('test.html')


@app.route('/test1')
def test():
    return render_template('test1.html')


if __name__ == '__main__':
    app.run(debug=True)
    