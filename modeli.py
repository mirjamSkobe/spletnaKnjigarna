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
    sql = '''INSERT INTO kupec (uporabnisko_ime, geslo, email, naslov, telefon) VALUES (?, ?, ?, ?, ?)'''
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
                 #popravi kodo za cena_kosarica
    sql = '''
        SELECT id_knjige, id_kupca, stevilo_izvodov,
               ID, naslov, avtor, cena,
               (stevilo_izvodov * cena) AS cena_vseh_izvodov,
               4.44 AS cena_kosarica
        FROM kosarica JOIN knjiga ON (kosarica.id_knjige = knjiga.ID)
    '''
    return list(con.execute(sql))

def dodaj_v_kosarico(knjiga, kupec):
    sql = '''
        INSERT INTO kosarica (id_kupca, id_knjige, stevilo_izvodov)
        VALUES (?, ?, 1)'''
    con.execute(sql, [kupec, knjiga])
    con.commit()

def odstrani_iz_kosarice(knjiga, kupec, izvodov):
    print(knjiga)
    sql = '''
        DELETE FROM kosarica
        WHERE (id_knjige = ?)
        '''
    con.execute(sql, [knjiga])
    con.commit()

def o_knjigi(knjiga):
    sql = '''
        SELECT *
        FROM knjiga JOIN zanr ON (knjiga.zanr = zanr.ID)
        WHERE knjiga.ID = ?
    '''
    return con.execute(sql, [knjiga]).fetchone()

def check_login(uporabnik, geslo):
    sql = '''
        SELECT geslo
        FROM kupec
        WHERE uporabnisko_ime LIKE ?
    '''
    pricakovano_geslo = con.execute(sql, [uporabnik]).fetchone()
    if pricakovano_geslo["geslo"] == geslo:
        return True
    else: return False
