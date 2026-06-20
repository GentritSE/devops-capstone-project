from flask import Flask
from flask_cors import CORS
from flask_talisman import Talisman

# Inicializimi i aplikacionit
app = Flask(__name__)

# Konfigurimi i sigurisë: CORS dhe Talisman
CORS(app)
Talisman(app)

# Importimi i rrugëve (routes) pas inicializimit
from service import routes
