import sqlite3
import pandas as pd

cnx = sqlite3.connect('data/database.sqlite')
cnx.close()