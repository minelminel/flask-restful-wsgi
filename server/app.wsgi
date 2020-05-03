import os, sys
here = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, here)

# The variable 'application' is important here, since mod_wsgi will be calling run on that variable
from src import app as application
