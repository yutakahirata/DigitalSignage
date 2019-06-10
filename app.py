"""
This script runs the application using a development server.
"""

import bottle,sys,os,time,threading
from selenium import webdriver
os.environ['DISPLAY']=':0'
os.environ['SERVER_HOST']='0.0.0.0'
os.environ['SERVER_PORT']='8890'
import comm
comm.options = webdriver.ChromeOptions()
comm.options.add_argument("--kiosk")
comm.options.add_argument("--disable-infobars")	
comm.browser = webdriver.Chrome(chrome_options=comm.options,executable_path="/usr/bin/chromedriver")

# routes contains the HTTP handlers for our server and must be imported.
import routes

if '--debug' in sys.argv[1:] or 'SERVER_DEBUG' in os.environ:
    # Debug mode will enable more verbose output in the console window.
    # It must be set at the beginning of the script.
    bottle.debug(True)

def wsgi_app():
    """Returns the application to make available through wfastcgi. This is used
    when the site is published to Microsoft Azure."""
    return bottle.default_app()

if __name__ == '__main__':
    PROJECT_ROOT = os.path.abspath(os.path.dirname(__file__))
    STATIC_ROOT = os.path.join(PROJECT_ROOT, 'static').replace('\\', '/')
    HOST = os.environ.get('SERVER_HOST', 'localhost')
    try:
        PORT = int(os.environ.get('SERVER_PORT', '5555'))
    except ValueError:
        PORT = 5555

    @bottle.route('/static/<filepath:path>')
    def server_static(filepath):
        """Handler for static files, used with the development server.
        When running under a production server such as IIS or Apache,
        the server should be configured to serve the static files."""
        return bottle.static_file(filepath, root=STATIC_ROOT)
    def geturl():
        time.sleep(1)
        comm.browser.get('http://%s:%s/'%(HOST,PORT))
        time.sleep(1)
        comm.browser.execute_script("document.body.style.zoom = '75%'")
    th = threading.Thread(target=geturl)
    th.start()
    # Starts a local test server.
    bottle.run(server='wsgiref', host=HOST, port=PORT)
