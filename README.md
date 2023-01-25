

# Django Channels Example

- more information: https://channels.readthedocs.io/en/stable/tutorial/part_1.html

# Setup
- pip install -U channels["daphne"] (https://channels.readthedocs.io/en/stable/installation.html)
- pip install -r requirements.txt
- pip install channels_redis

# Info

A Channels routing configuration is an ASGI application that is similar to a Django URLconf, in that it tells Channels what code to run when an HTTP request is received by the Channels server.

Daphne (see settings) will take control of the runserver command, replacing the standard Django development server with the ASGI compatible version.


Start Redis server: docker run -p 6379:6379 -d redis:5 (open -a docker)


Chromedriver: https://chromedriver.storage.googleapis.com/index.html?path=109.0.5414.74/ (needed for tests)

Channels in general: https://channels.readthedocs.io/en/stable/index.html#topics

Environ: https://django-environ.readthedocs.io/en/latest/quickstart.html
