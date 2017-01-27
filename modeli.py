import sqlite3

con = sqlite3.connect('spletnaKnjigarna.db')
con.row_factory = sqlite3.Row

def seznam_knjig_kupec():
    sql = '''
        SELECT knjiga.ID, naslov, avtor, zanr.zanr, cena, st_naZalogi
        FROM knjiga JOIN zanr ON (knjiga.zanr = zanr.ID)
        WHERE st_naZalogi > 0
        ORDER BY  avtor, naslov
    '''
    return list(con.execute(sql))

def seznam_knjig_knjigarnar():
    sql = '''
        SELECT knjiga.ID, naslov, avtor, zanr.zanr, cena, st_naZalogi
        FROM knjiga JOIN zanr ON (knjiga.zanr = zanr.ID)
        ORDER BY  st_naZalogi ASC, avtor, naslov
    '''
    return list(con.execute(sql))

def registracija(uporabnisko_ime, geslo, email, naslov, telefon):
    sql = '''
        UPDATE kupec
        SET uporabnisko_ime = ?, geslo = ?, email = ?, naslov = ?, telefon = ?
    '''
    con.execute(sql, [uporabnisko_ime, geslo, email, naslov, telefon])
    con.commit()

def dodaj_knjigo(naslov, avtor, zanr, leto_izdaje, formatK, opis, cena, st_naZalogi):
    sql = '''INSERT INTO knjiga (naslov, avtor, zanr, leto_izdaje, formatK, opis, cena, st_naZalogi) VALUES (?, ?, ?, ?, ?, ?, ?, ?)'''
    con.execute(sql,[naslov, avtor, zanr, leto_izdaje, formatK, opis, cena, st_naZalogi])
    con.commit()

def dodaj_dobavitelja(ime_podjetja, naslov, email):
    sql = '''INSERT INTO dobavitelj (ime_podjetja, naslov, email) VALUES (?, ?, ?)'''
    con.execute(sql,[ime_podjetja, naslov, email])
    con.commit()

def seznam_dobavitelji():
    sql = '''
        SELECT *
        FROM dobavitelj
        ORDER BY  ime_podjetja, naslov
    '''
    return list(con.execute(sql))

def kosarica():  #WHERE kupec.ID = ?
    sql = '''
        SELECT knjiga.ID, knjiga.naslov, knjiga.avtor, knjiga.cena
        FROM kosarica JOIN knjiga ON (kosarica.id_knjige = knjiga.ID)
    '''
    return list(con.execute(sql))
