import sqlite3

con = sqlite3.connect('spletnaKnjigarna.db')
con.row_factory = sqlite3.Row

def seznam_knjig():
    sql = '''
        SELECT avtor, naslov, opis
        FROM knjiga
        WHERE avtor LIKE 'A%'
    '''
    return list(con.execute(sql))
