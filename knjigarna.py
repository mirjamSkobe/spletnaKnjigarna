from bottle import *
from bottlesession import session
import modeli

#!/usr/bin/python
# -*- coding: utf-8 -*-

seja = session()
seja.set('vpisani_ime', 'gost')
seja.set('vpisani_ID', '')

def dodajanje_v_kosarico(knjiga, kupec):
    '''Doda knjigo v kosarico, ce je na zalogi.'''
    if modeli.na_zalogi(knjiga):
        modeli.dodaj_v_kosarico(knjiga, kupec)
        redirect('/stran_za_kupca/moja_kosarica')
    else:
        return "Knjige trenutno ni na zalogi.<br><br>" +\
               "<a href=\"/stran_za_kupca\">Nazaj v knjigarno</a>"


##--> DOMAČA STRAN <--##
@route('/')
def domaca_stran():
    return template(
        'domaca_stran',
        kupec = modeli.seznam_knjig_kupec(),
        knjigarnar = modeli.seznam_knjig_knjigarnar(),
    )

##--> VSTOP ZA KNJIGARNARJA <--##
@route('/vstopKnjigarnar/seznam_knjig_knjigarnar')
def stran_za_knjigarnarja():
    return template(
        'seznam_knjig_knjigarnar',
        knjige2 = modeli.seznam_knjig_knjigarnar(),
        dobavitelji = modeli.seznam_dobavitelji(),
    )

##--> VPIS KNJIGARNAR <--##
@route('/vstopKnjigarnar')
def vstopKnjigarnar():
    return template(
        'vstopKnjigarnar',
        knjige2 = modeli.seznam_knjig_knjigarnar(),
        dobavitelji = modeli.seznam_dobavitelji(),
    )

##--> DODAJ KNJIGO <--##
@get('/vstopKnjigarnar/dodaj_knjigo')
def dodaj_knjigo():
    return template(
        'dodaj_knjigo',
        dobavitelji = modeli.seznam_dobavitelji(),
    )

@post('/vstopKnjigarnar/dodaj_knjigo')
def dodaj_knjigo_post():
    naslov = request.forms.get('naslov')
    avtor = request.forms.get('avtor')
    zanr = request.forms.get('zanr')
    leto_izdaje = request.forms.get('leto_izdaje')
    format = request.forms.get('format')
    opis = request.forms.get('opis')
    cena = request.forms.get('cena')
    st_naZalogi = 0
    modeli.dodaj_knjigo(naslov, avtor, zanr, leto_izdaje, format, opis, cena, st_naZalogi)
    dobavitelj = request.forms.get('dobavitelj')
    modeli.napolni(dobavitelj, naslov)
    redirect('/vstopKnjigarnar')

##--> SEZNAM DOBAVITELJEV <--##
@route('/vstopKnjigarnar/seznam_dobavitelji')
def seznam_dobaviteljev():
    return template(
        'seznam_dobavitelji',
        dobavitelji = modeli.seznam_dobavitelji(),
    )

##--> DODAJ DOBAVITELJA <--##
@get('/vstopKnjigarnar/dodaj_dobavitelja')
def dodaj_dobavitelja():
    return template(
        'dodaj_dobavitelja',
        dobavitelji = modeli.seznam_dobavitelji(),
    )

@post('/vstopKnjigarnar/dodaj_dobavitelja')     #ime funkcije = dodaj_knjigo
def dodaj_knjigo_post():
    ime_podjetja = request.forms.get('ime_podjetja')
    naslov = request.forms.get('naslov')
    email = request.forms.get('email')
    modeli.dodaj_dobavitelja(ime_podjetja, naslov, email)
    redirect('/vstopKnjigarnar')

##--> ZAKLJUČENA NAROČILA <--##
@route('/vstopKnjigarnar/zakljucena_narocila')
def seznam_zakljucenih_narocil():
    return template(
        'zakljucena_narocila',
        narocila = modeli.seznam_zakljucenih_narocil(),
        dobavitelji = modeli.seznam_dobavitelji(),
    )

##--> ODPRTA NAROČILA <--##
@route('/vstopKnjigarnar/odprta_narocila')
def seznam_odprtih_narocil():
    return template(
        'odprta_narocila',
        narocila = modeli.seznam_odprih_narocil(),
        dobavitelji = modeli.seznam_dobavitelji(),
    )

##--> PODATKI O NAROČILU <--##
@get('/vstopKnjigarnar/narocilo/<narocilo>')
def narocilo(narocilo):
    return template(
        'urejanje_narocila',
        narocilo = modeli.narocilo_podatki(narocilo),
        narocene_knjige = modeli.knjige_enega_racuna(narocilo),
        zakljuceno = modeli.status_narocila(narocilo),
        dobavitelji = modeli.seznam_dobavitelji(),
        )

##--> SPREMENI STATUS NAROČILA <--##
@post('/vstopKnjigarnar/narocilo/<narocilo>')
#spremeni status narocila iz odprto v zakljuceno
#ustrezno zmanjša število knjig na zalogi
#spremeni boolean posiljka_odposlana v tabeli racun iz 0 v 1
def zakljuci_narocilo(narocilo):
    narocilo = narocilo
    modeli.zakljuci_narocilo(narocilo)
    return "Naročilo je bilo uspešno zaključeno.<br><br>" +\
           "<a href=\"/vstopKnjigarnar/odprta_narocila\">" +\
           "Nazaj v odprta naročila</a>"

##--> VSTOP ZA KUPCA <--##
@route('/stran_za_kupca')
def stran_za_kupca():
    return template(
        'seznam_knjig_kupec',
        knjige = modeli.seznam_knjig_kupec(),
        ID_upor = seja.read('vpisani_ID'),
        ime_uporabnika = seja.read('vpisani_ime')
    )

@post('/stran_za_kupca')  #dodajanje knjige v košarico
def dodaj_v_kosarico():
    knjiga = request.forms.get('knjiga')
    kupec = request.forms.get('kupec')
    if not kupec:
        return "Za dodajanje knjig v košarico se morate " +\
               "<a href=\"/stran_za_kupca/vpis\">vpisati</a> ali " +\
               "<a href=\"/stran_za_kupca/registracija\">registrirati</a>."
    dodajanje_v_kosarico(knjiga, kupec)

##--> OBRAZEC ZA PRIKAZ KNJIG <--##
@route('/stran_za_kupca/filtriraj_knjige')
def obrazec_za_prikaz_knjig():
    return template(
        'obrazec_za_prikaz_knjig',
        ID_upor = seja.read('vpisani_ID'),
        ime_uporabnika = seja.read('vpisani_ime')
    )

@post('/stran_za_kupca/filtriraj_knjige')
def razvrsti_tabelo():
    zanri = request.forms.getlist('zanri')
    prikazi_po = request.forms.get('prikaz')
    return template(
        'seznam_knjig_kupec_prilagojen',
        knjige = modeli.razvrsti_tabelo(zanri, prikazi_po),#prilagojena tabela
        ID_upor = seja.read('vpisani_ID'),
        ime_uporabnika = seja.read('vpisani_ime')
    )
    
##--> KOŠARICA <--##
@route('/stran_za_kupca/moja_kosarica')
def kosarica():
    ID_upor = seja.read('vpisani_ID')
    ime_upor = seja.read('vpisani_ime')
    return template(
        'kosarica',
        ime_uporabnika = ime_upor,
        ID_uporabnika = ID_upor,
        knjige = modeli.kosarica(ID_upor)
        )

@post('/stran_za_kupca/moja_kosarica')
def odstrani_iz_kosarice():
    knjiga = request.forms.knjiga
    kupec = request.forms.kupec
    modeli.odstrani_iz_kosarice(knjiga, kupec)
    return template(
        'kosarica',
        ime_uporabnika = 'Jure',#popravi ime in ID (ko bo seja delovala)
        ID_uporabnika = 1,
        knjige = modeli.kosarica(kupec)
        )

##--> NAKUP <--##
@route('/stran_za_kupca/nakup')
def racun():
    kupec = seja.read('vpisani_ID')
    return template(
        'nakup',
        kupec = kupec,
        knjige = modeli.kosarica(kupec),
        cena = modeli.cena_kosarice(kupec),
        ime_uporabnika = seja.read('vpisani_ime')
    )

@post('/stran_za_kupca/nakup')
def nakup_v_teku():
    kupec = request.forms.kupec
    modeli.nakup_v_teku(kupec)
    return "Račun je bil poslan na vaš elektronski naslov.<br>\
Po plačilu računa bomo knjige poslali na vaš naslov.<br>Zahvaljujemo se vam \
za nakup.<br><br>" +\
           "<a href=\"/stran_za_kupca\">Nazaj v knjigarno</a>"

##--> PREDSTAVITEV KNJIGE <--##
@get('/stran_za_kupca/o_knjigi/<knjiga>')
def o_knjigi(knjiga):
    return template(
        'o_knjigi',
        knjiga=modeli.o_knjigi(knjiga),
        ime_uporabnika = seja.read('vpisani_ime'),
        ID_upor = seja.read('vpisani_ID')
    )

@post('/stran_za_kupca/o_knjigi/<knjiga>')  #dodajanje knjige v košarico
def dodaj_v_kosarico(knjiga):
    kupec = request.forms.get('kupec')
    if not kupec:
        return "Za dodajanje knjig v košarico se morate " +\
               "<a href=\"/stran_za_kupca/vpis\">vpisati</a> ali " +\
               "<a href=\"/stran_za_kupca/registracija\">registrirati</a>."
    dodajanje_v_kosarico(knjiga, kupec)

##--> REGISTRACIJA KUPCA <--##
@route('/stran_za_kupca/registracija')
def registracija():
    return template(
        'registracija.tpl',
        ime_uporabnika = seja.read('vpisani_ime')
    )

@post('/stran_za_kupca/registracija')
def dodaj_kupca():
    uporabnisko_ime = request.forms.uporabnik
    geslo = kodiraj(request.forms.geslo)
    email = request.forms.email
    naslov = request.forms.naslov
    telefon = request.forms.telefon
    modeli.registracija(uporabnisko_ime, geslo, email,
                        naslov, telefon)
    return "Registracija je bila uspesna.<br><br>" +\
           "<a href=\"/stran_za_kupca\">Nazaj v knjigarno</a>"

##--> VPIS KUPCA <--##
@route('/stran_za_kupca/vpis')
def vpis():
    return '''
        <form action="/stran_za_kupca/vpis" method="post">
            Uporabniško ime: <input name="uporabnisko_ime" type="text" />
            Geslo: <input name="geslo" type="password" />
            <input value="OK" type="submit" />
        </form>
    '''

@post('/stran_za_kupca/vpis')
def potrdi_vpis():
    uporabnisko_ime = request.forms.get('uporabnisko_ime')
    geslo = kodiraj(request.forms.get('geslo'))
    vpis = modeli.preveri_vpis(uporabnisko_ime, geslo)  #modeli.preveri_vpis
    if vpis == False:                                   #vrne ID kupca/admina
        return "<p>Neuspešna prijava</p>"
    else:
        seja.set('vpisani_ime', uporabnisko_ime)
        seja.set('vpisani_ID', vpis)
        redirect('/stran_za_kupca/moja_kosarica')

##--> IZPIS KUPCA <--##
@route('/stran_za_kupca/izpis')
def izpis():
    seja.set('vpisani_ime', 'gost')
    seja.set('vpisani_ID', '')
    return "Uspešno ste se izpisali.<br><br>" +\
           "<a href=\"/stran_za_kupca\">Nazaj v knjigarno</a>"

##--> VPIS LASTNIKA <--##
#geslo od admina je admin1234 :)
@post('/')
def vpis_lastnik():
    uporabnisko_ime = request.forms.uporabnisko_ime
    geslo = kodiraj(request.forms.geslo)
    vpis = modeli.preveri_vpis(uporabnisko_ime, geslo)
    if vpis == False:
        return "<p>Neuspešna prijava</p>"
    else:
        seja.set('vpisani_ime', uporabnisko_ime)
        seja.set('vpisani_ID', vpis)
        redirect('/vstopKnjigarnar')


##--> IZPIS LASTNIKA <--##
@route('/vstopKnjigarnar/izpis')
def izpis_lastnik():
    seja.set('vpisani_ime', 'gost')
    seja.set('vpisani_ID', '')
    return "Admin, uspešno ste se izpisali.<br><br>" +\
           "<a href=\"/\">Vhodna stran</a>"

##--> O KNJIGI LASTNIK <--##
@get('/vstopKnjigarnar/o_knjigi_lastnik/<knjiga>')
def o_knjigi(knjiga):
    return template(
        'o_knjigi_lastnik',
        knjiga=modeli.o_knjigi(knjiga),
        dobavitelji = modeli.seznam_dobavitelji(),
        ID_upor = seja.read('vpisani_ID')
    )

##--> SPREMEMBA CENE <--##
@post('/vstopKnjigarnar/o_knjigi_lastnik/<knjiga>')
def sprememba_cene(knjiga):
    ID = int(request.forms.ID)
    cena = float(request.forms.cena)
    modeli.spremeni_ceno(ID, cena)
    redirect('/vstopKnjigarnar/seznam_knjig_knjigarnar')

##--> NAROČI KNJIGO PRI DOBAVITELJU <--##
@get('/vstopKnjigarnar/<ime_podjetja>')
def naroci_dobavitelj(ime_podjetja):
    return template(
        'naroci_dobavitelj',
        knjige = modeli.seznam_knjig_dobavitelja(ime_podjetja),
        dobavitelji = modeli.seznam_dobavitelji(),
        ime = ime_podjetja,
    )    
@post('/vstopKnjigarnar/<ime_podjetja>')
def naroci_dobavitelj_post(ime_podjetja):
    id_knjige = request.forms.get('knjiga')
    print(id_knjige)
    kolicina = int(request.forms.get('kolicina'))
    modeli.dodaj_v_tabelo(id_knjige, kolicina)
    redirect('/vstopKnjigarnar')

##--> VSE DOBAVNICE <--##
@route('/vstopKnjigarnar/dobavnice')
def vse_dobavnice():
    return template(
        'vse_dobavnice',
        dobavitelji = modeli.seznam_dobavitelji(),
        dobavnice = modeli.vse_dobavnice(),
    )


#==========================KODIRANJE GESEL====================================
import hashlib, binascii

def kodiraj(geslo):
    return hashlib.md5((geslo).encode()).hexdigest()
#=============================================================================

run(debug=True)
