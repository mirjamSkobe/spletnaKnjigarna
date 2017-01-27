from bottle import *
import modeli

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
    )

##--> VPIS KNJIGARNAR <--##
@route('/vstopKnjigarnar')
def vstopKnjigarnar():
    return template(
        'vstopKnjigarnar',
        knjige2 = modeli.seznam_knjig_knjigarnar(),
    )

##--> DODAJ KNJIGO <--##
@get('/vstopKnjigarnar/dodaj_knjigo')
def dodaj_knjigo():
    return template(
        'dodaj_knjigo',
    )

@post('/vstopKnjigarnar/dodaj_knjigo')
def dodaj_knjigo_post():
    naslov = request.forms.get('naslov')
    avtor = request.forms.get('avtor')
    zanr = request.forms.get('zanr')
    leto_izdaje = request.forms.get('leto_izdaje')
    formatK = request.forms.get('formatK')
    opis = request.forms.get('opis')
    cena = request.forms.get('cena')
    st_naZalogi = request.forms.get('st_naZalogi')
    modeli.dodaj_knjigo(naslov, avtor, zanr, leto_izdaje, formatK, opis, cena, st_naZalogi)
    redirect('/vstopKnjigarnar')

##--> SEZNAM DOBAVITELJEV <--##
@route('/vstopKnjigarnar/seznam_dobavitelji')
def seznam_dobaviteljev():
    return template(
        'seznam_dobavitelji',
        dobavitelj = modeli.seznam_dobavitelji(),
    )

##--> DODAJ DOBAVITELJA <--##
@get('/vstopKnjigarnar/dodaj_dobavitelja')
def dodaj_dobavitelja():
    return template(
        'dodaj_dobavitelja',
    )

@post('/vstopKnjigarnar/dodaj_dobavitelja')
def dodaj_knjigo_post():
    ime_podjetja = request.forms.get('ime_podjetja')
    naslov = request.forms.get('naslov')
    email = request.forms.get('email')
    modeli.dodaj_dobavitelja(ime_podjetja, naslov, email)
    redirect('/vstopKnjigarnar')

##--> VSTOP ZA KUPCA <--##
@route('/stran_za_kupca')
def stran_za_kupca():
    return template(
        'seznam_knjig_kupec',
        knjige1 = modeli.seznam_knjig_kupec(),
    )

##--> REGISTRACIJA KUPCA <--##
@route('/stran_za_kupca/registracija')
def registracija():
    return template(
        'registracija.tpl'
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
    return "<p>Registracija je bila uspesna.</p>"

##--> KOŠARICA <--##
@route('/kosarica')
def kosarica():
    return template(
        'kosarica',
        knjige = modeli.kosarica()
        )

@post('/kosarica')
def posodobi_kosarico():
    izvodov = request.forms.izvodov
    modeli.posodobi_kosarico(izvodov)
    return template(
        'kosarica',
        knjige = modeli.kosarica()
        )

#==========================KODIRANJE GESEL====================================
import hashlib, binascii

def kodiraj(geslo):
    return hashlib.md5((geslo).encode()).hexdigest()
#=============================================================================

run(debug=True)
