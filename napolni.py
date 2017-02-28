import sqlite3
import random

con = sqlite3.connect('spletnaKnjigarna.db')
con.row_factory = sqlite3.Row

def napolni(id_dobavitelja, id_knjige):

    sql = '''INSERT INTO dobavitelj_dobavlja
  (id_knjige, id_dobavitelja)
SELECT knjiga.ID,
       (SELECT dobavitelj.ID
          FROM dobavitelj
         WHERE dobavitelj.ID = ?)
  FROM knjiga
 WHERE knjiga.ID = ?'''

    con.execute(sql,[id_dobavitelja, id_knjige])
    con.commit()

sez = []
for i in range(136):
    id_knjige = i
    id_dobavitelja = random.randint(1, 5)
    if id_knjige not in sez:
        sez.append(id_knjige)
        napolni(id_dobavitelja, id_knjige)


