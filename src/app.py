# compose_flask/app.py
from flask import Flask
from redis import Redis

app = Flask(__name__)
redis = Redis(host='redis', port=6379)

# @app.route('/')
# def hello():
#     redis.incr('hits')
#     return 'This Compose/Flask demo has been viewed by me on  %s time(s).' % redis.get('hits')

@app.route('/')
def hello():
    try:
        redis.incr('hits')
        hits = redis.get('hits')
        return f"This Compose/Flask demo has been viewed by me {hits} time(s)."
    except RedisError as e:
        return f"Error connecting to Redis: {str(e)}"

if __name__ == "__main__":
    app.run(host="0.0.0.0", debug=True)
