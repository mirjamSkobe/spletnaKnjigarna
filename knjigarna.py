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
##--> VSTOP ZA KUPCA <--##
@route('/stran_za_kupca')
def stran_za_kupca():
    return template(
        'seznam_knjig_kupec',
        knjige1 = modeli.seznam_knjig_kupec(),
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
def dodaj_knjigo():
    naslov = request.forms.get('naslov')
    avtor = request.forms.get('avtor')
    zanr = request.forms.get('zanr')
    leto_izdaje = request.forms.get('leto_izdaje')
    cena = request.forms.get('cena')
    st_naZalogi = request.forms.get('st_naZalogi')
    formatK = request.forms.get('formatK')
    opis = request.forms.get('opis')
    modeli.dodaj_knjigo(naslov, avtor, zanr, leto_izdaje, formatK, opis, cena, st_naZalogi)
    redirect('/')

##--> REGISTRACIJA KUPCA <--##
@route('/stran_za_kupca/registracija')
def registracija():
    return template(
        'registracija.tpl'
        #kupec=modeli.registracija()
    )

@post('/registracija')
def uredi_osebo_post(oseba):
    uporabnisko_ime = request.forms.uporabnisko_ime
    geslo = request.forms.geslo
    email = request.forms.email
    naslov = request.forms.naslov
    telefon = request.forms.telefon
    modeli.registracija(uporabnisko_ime, geslo, email, naslov, telefon)
    redirect('/')  #"Registracija uspešna!" dodati?

run(debug=True)
