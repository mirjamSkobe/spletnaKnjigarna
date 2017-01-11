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
@route('/stran_za_knjigarnarja')
def stran_za_knjigarnarja():
    return template(
        'seznam_knjig_knjigarnar',
        knjige2 = modeli.seznam_knjig_knjigarnar(),
    )


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
