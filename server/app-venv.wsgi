# Requires a virtualenv, called `venv`, to be created at /var/www/html/server
import os
here = os.path.dirname(os.path.abspath(__file__))
activate_this = os.path.join(here, "venv/bin/activate_this.py")
exec(open(activate_this).read())

import sys
sys.path.insert(0, here)
# The variable 'application' is important here, since mod_wsgi will be calling run on that variable
from webapp import app as application

