# About this Django Example

This is a django web framework example demonstrating the usage of some modern concepts and technologies:

- django channels (use websocket protocol for chat room)
- env/environment variables for keeping secrets secret
- inclusion of bootstrap and simple javascript in html templates
- using docker to containerize a simple django application
- since docker will not be enough (we need redis), docker-compose is used as well
- auto web tests with selenium

# Setup

Some attention here:

- pip install -U channels["daphne"] (https://channels.readthedocs.io/en/stable/installation.html)
- pip install channels_redis

In general, just:

- pip install -r requirements.txt

# Information

A Channels routing configuration is an ASGI application that is similar to a Django URLconf, in that it tells Channels what code to run when an HTTP request is received by the Channels server.
ASGI (Asynchronous Server Gateway Interface) is used for asynchronous web servers and applications (in contrast to WSGI (web server gateway interface)).

Daphne (see settings) is a Python ASGI server for UNIX and will take control of the runserver command (python manage.py runserver), replacing the standard Django development server with the ASGI compatible version.

Start Redis server: docker run -p 6379:6379 -d redis:5 (open -a docker)

Daphne: https://docs.djangoproject.com/en/4.1/howto/deployment/asgi/daphne/

Chromedriver: https://chromedriver.storage.googleapis.com/index.html?path=109.0.5414.74/ (needed for automatic tests)

Channels in general: https://channels.readthedocs.io/en/stable/index.html#topics

Environ: https://django-environ.readthedocs.io/en/latest/quickstart.html

Channels, more information: https://channels.readthedocs.io/en/stable/tutorial/part_1.html

# Instructions

- Server running locally at http://127.0.0.1:8000/ (in browser).
- Requirements: pip freeze -l > requirements.txt

# Docker

- docker build -t docker-django-v0.0
- docker run -it docker-django-v0.0 (or without -it)

# Docker-compose

- docker-compose build
- docker-compose up

# Environment

- Add file with name .env in root directory and add this to .gitignore
- in this file, add e.g.: SECRET_KEY=django-insecure-xyz (and keep it secret)
