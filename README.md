# flask-restful-wsgi
Sample flask_restful app with Apache mod_wsgi configs

## Purpose
This repo illustrates a simplified approach for deploying a flask_restful (Python Flask) app on Apache 2.4 using mod_wsgi. In general, this is a more specific elaboration to [this guidance](http://flask.pocoo.org/docs/0.12/deploying/mod_wsgi/). Say you have a front-end that can be deployed as a static site (think React app) with the flask_restful application serving as the API layer for that front-end, this repo will help you with a basic Apache config for that: static site is at '/' and the api is at '/api'.

## Usage
A Makefile has been provided which contains several common commands
```bash
$ make build    # create the image
$ make run      # start container on localhost:8000
$ make shell    # spawn an interactive shell inside container
```

## Developing
Hot reload is enabled when using the `docker-compose` file, just save your files and reload the page without restarting
```bash
docker-compose up --build
```
