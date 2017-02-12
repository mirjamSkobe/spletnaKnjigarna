import sqlite3

con = sqlite3.connect('spletnaKnjigarna.db')
con.row_factory = sqlite3.Row

##--> KNJIGARNAR <--##

def seznam_knjig_knjigarnar():
    sql = '''
        SELECT knjiga.ID, naslov, avtor, zanr.zanr, cena, st_naZalogi
        FROM knjiga JOIN zanr ON (knjiga.zanr = zanr.ID)
        ORDER BY  st_naZalogi ASC, avtor, naslov
    '''
    return list(con.execute(sql))

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

def preveri_vpisA(upIme, geslo):
    sql = '''
        SELECT geslo FROM kupec WHERE uporabnisko_ime = ? AND geslo = ?;
          '''
    pravo = con.execute(sql, [upIme, geslo]).fetchone()
    #ce je none ali ne
    return pravo

def seznam_knjig_kupec():
    sql = \
        '''SELECT knjiga.ID, naslov, avtor, zanr.zanr, cena, st_naZalogi ''' + \
        '''FROM knjiga JOIN zanr ON (knjiga.zanr = zanr.ID) ''' + \
        '''WHERE st_naZalogi > 0 ''' + \
        '''ORDER BY avtor, naslov '''
    
    return list(con.execute(sql))

def razvrsti_tabelo(zanri, prikazi_po):
    #vrstni red
    if prikazi_po == 'avtor_n': vrstni_red = '''avtor, naslov''' 
    elif prikazi_po == 'avtor_p': vrstni_red = '''avtor DESC, naslov'''
    elif prikazi_po == 'naslov_n': vrstni_red = '''naslov, avtor'''
    elif prikazi_po == 'naslov_p': vrstni_red = '''naslov DESC, avtor'''
    elif prikazi_po == 'cena_n': vrstni_red = '''cena, avtor, naslov'''
    elif prikazi_po == 'cena_p': vrstni_red = '''cena DESC, avtor, naslov'''
    #zanri
    zeljeni_zanri = '('
    for zanr in zanri: zeljeni_zanri = zeljeni_zanri + zanr + ', '
    zeljeni_zanri = zeljeni_zanri[:-2] + ')'
    #--------
    sql = '''
        SELECT knjiga.ID, naslov, avtor, zanr.zanr, cena, st_naZalogi
        FROM knjiga JOIN zanr ON (knjiga.zanr = zanr.ID)
        WHERE st_naZalogi > 0
        AND knjiga.zanr in ''' + zeljeni_zanri + ''' ORDER BY ''' + vrstni_red
    return list(con.execute(sql))

def kosarica(id_kupca):    
    sql = '''
        SELECT knjiga.naslov AS naslov,
               knjiga.avtor AS avtor,
               kosarica.stevilo_izvodov AS stevilo_izvodov,
               knjiga.cena AS cena,
               kosarica.id_knjige AS id_knjige,
               knjiga.cena * kosarica.stevilo_izvodov AS cena_vseh_izvodov
        FROM kosarica JOIN knjiga ON (kosarica.id_knjige = knjiga.ID)
        WHERE id_kupca = ?
    '''
    return list(con.execute(sql, [id_kupca]))

def cena_kosarice(id_kupca):
    sql = '''
        SELECT SUM(kosarica.stevilo_izvodov * knjiga.cena) AS cena
        FROM kosarica JOIN knjiga ON (kosarica.id_knjige = knjiga.ID)
        WHERE id_kupca = ?
    '''
    rezultat = con.execute(sql, [id_kupca]).fetchone()
    return rezultat['cena']

def dodaj_v_kosarico(knjiga, kupec):
    sql1 = '''SELECT * FROM kosarica WHERE id_kupca = ? AND id_knjige = ?'''
    obstaja = list(con.execute(sql1, [kupec, knjiga]))  #ali ima kupec to
    if obstaja:                                         #knjigo ze v kosarici
        sql = '''
            UPDATE kosarica
            SET stevilo_izvodov = stevilo_izvodov + 1
            WHERE id_kupca = ? AND id_knjige = ?
            
        '''
        con.execute(sql, [kupec, knjiga])
        con.commit()
    else:
        sql = '''
            INSERT INTO kosarica (id_kupca, id_knjige, stevilo_izvodov)
            VALUES (?, ?, 1)
            
        '''
        con.execute(sql, [kupec, knjiga])
        con.commit()

def odstrani_iz_kosarice(knjiga, kupec):
    sql = '''
        DELETE FROM kosarica
        WHERE id_knjige = ?
        AND id_kupca = ?
        '''
    con.execute(sql, [knjiga, kupec])
    con.commit()

def nakup_v_teku(kupec):
    #iz košarice na račun
    #iz košarice v pošiljko in pošiljka_vsebuje_knjigo (rabiš id_računa!!)
    znesek = cena_kosarice(kupec)
    sql = '''
        INSERT INTO racun (id_kupca, znesek, placan, posiljka_odposlana)
        VALUES (?, ?, 0, 0)
        '''
    con.execute(sql, [kupec, znesek])  #ustvari racun
    sql0 = '''
        SELECT MAX(id) as trenutni_racun FROM racun
        '''
        #za tabelo racun_vsebuje_knjiga potrebujemo id tega racuna 
        #ta racun je bil ustvarjen ravnokar. ima najvecji id, saj se id
        #ustvari samodejno z autoincrement.
    id_racuna = con.execute(sql0).fetchone()["trenutni_racun"]    
    sql2 = '''
        INSERT INTO racun_vsebuje_knjiga
        (id_racuna, id_knjige, stevilo_izvodov)
        SELECT ?, id_knjige, stevilo_izvodov
        FROM kosarica
        WHERE id_kupca = ?
        '''
    con.execute(sql2, [id_racuna, kupec])  #izpolni vse racun_vsebuje_knjigo
    sql3 = '''
        DELETE FROM kosarica
        WHERE id_kupca = ?
        '''
    con.execute(sql3, [kupec])  #izprazni kosarico kupca
    con.commit()

def o_knjigi(knjiga):
    sql = '''
        SELECT knjiga.ID, naslov, avtor, opis, cena, zanr.zanr as zanr
        FROM knjiga JOIN zanr ON (knjiga.zanr = zanr.ID)
        WHERE knjiga.ID = ?
    '''
    return con.execute(sql, [knjiga]).fetchone()

def preveri_vpis(uporabnik, geslo):
    sql = '''
        SELECT geslo, ID FROM kupec WHERE uporabnisko_ime LIKE ?
    '''
    pricakovano_geslo = con.execute(sql, [uporabnik]).fetchone()
    if pricakovano_geslo["geslo"] == geslo:
        return pricakovano_geslo["ID"]
    return False

def registracija(uporabnisko_ime, geslo, email, naslov, telefon):
    sql = '''INSERT INTO kupec (uporabnisko_ime, geslo, email, naslov, telefon) VALUES (?, ?, ?, ?, ?)'''
    con.execute(sql, [uporabnisko_ime, geslo, email, naslov, telefon])
    con.commit()
