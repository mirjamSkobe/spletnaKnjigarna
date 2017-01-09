import sqlite3

con = sqlite3.connect('spletnaKnjigarna.db')
con.row_factory = sqlite3.Row

def seznam_knjig():
    sql = '''
        SELECT knjiga.ID, naslov, avtor, zanr.zanr, cena, st_naZalogi
        FROM knjiga JOIN zanr ON (knjiga.zanr = zanr.ID)
    '''
    return list(con.execute(sql))

def registracija(uporabnisko_ime, geslo, email, naslov, telefon):
    sql = '''
        UPDATE kupec
        SET uporabnisko_ime = ?, geslo = ?, email = ?, naslov = ?, telefon = ?
    '''
    con.execute(sql, [uporabnisko_ime, geslo, email, naslov, telefon])
    con.commit()
