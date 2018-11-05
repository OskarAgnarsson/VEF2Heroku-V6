#from sys import argv

import bottle
from bottle import *
import urllib.request, json
from beaker.middleware import SessionMiddleware
import os

session_opts = {
    'session.type': 'file',
    'session.data_dir': './data',
    'session.cookie_expires': 600,
    'session.auto': True
}

app = SessionMiddleware(bottle.app(), session_opts)

vara = [{'name':'Jakki','price':'20000'},{'name':'Peysa','price':'10000'},{'name':'Kjóll','price':'35000'},{'name':'Stuttbuxur','price':'7500'},{'name':'Úlpa','price':'45000'},{'name':'Skór','price':'30000'}]

@route("/")
def index():
    return template("index.tpl")

@route("/chart/<id>")
def add(id):
    bs = request.environ.get('beaker.session')
    bs[id] = 'check'
    bs.save()
    redirect('/')

@route('/chart')
def chart():
    bs = request.environ.get('beaker.session')
    return template('chart.tpl',val=vara)

@route('/del/')
def eyda(id):
    bs = request.environ.get('beaker.session')
    bs[id] = None
    redirect('/chart')

@route('/delall')
def taema():
    bs = request.environ.get('beaker.session')
    bs.delete()
    bs.save()
    redirect('/chart')
##########################################
@error(404)
def villa(error):
    return "<h2>Error 404: Not Found</h2>"

@route("/static/<skra>")
def static_skra(skra):
    return static_file(skra, root="./static")

run(host = "localhost", port = 8080, reloader = True)

#bottle.run(host="0.0.0.0", port=argv[1])
