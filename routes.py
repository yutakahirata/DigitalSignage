"""
Routes and views for the bottle application.
"""

from bottle import route, view
from datetime import datetime
import os

@route('/')
@route('/home')
@view('index')
def home():
    """Renders the home page."""
    lst=os.listdir("./static/cont")
    return dict(
        year=datetime.now().year,pict = lst
    )

