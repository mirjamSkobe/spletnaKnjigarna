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
        knjige1 = modeli.seznam_knjig_kupec()
    )

@post('/stran_za_kupca')  #dodajanje knjige v košarico
def dodaj_v_kosarico():
    knjiga = request.forms.get('knjiga')
    kupec = request.forms.get('kupec')
    modeli.dodaj_v_kosarico(knjiga, kupec)
    redirect('/stran_za_kupca/moja_kosarica')

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

##--> VPIS KUPCA <--##
"""source https://bottlepy.org/docs/dev/tutorial.html"""

@route('/vpis')
def login():
    return '''
        <form action="/vpis" method="post">
            Username: <input name="username" type="text" />
            Password: <input name="password" type="password" />
            <input value="Login" type="submit" />
        </form>
    '''

@post('/vpis')
def do_login():
    username = request.forms.get('username')
    password = kodiraj(request.forms.get('password'))
    if modeli.check_login(username, password):
        response.set_cookie("account", username, secret='skrivni_klju')
        return  template("<p>Dobrodošli: {{name}}</p>", name=username)
    else:
        return "<p>Neuspešna prijava</p>"

@route('/restricted')
def restricted_area():
    username = request.get_cookie("account", secret='skrivni_ključ')
    if username:
        return template("Hello {{name}}. Welcome back.", name=username)
    else:
        return "You are not logged in. Access denied."
    
##@route('/login')
##def do_login():
##    username = request.forms.get('username')
##    password = request.forms.get('password')
##    if check_login(username, password):
##        response.set_cookie("account", username, secret='some-secret-key')
##        return template("<p>Welcome {{name}}! You are now logged in.</p>",
##                        name=username)
##    else:
##        return "<p>Login failed.</p>"

##--> KOŠARICA <--##
@route('/stran_za_kupca/moja_kosarica')
def kosarica():
    return template(
        'kosarica',
        knjige = modeli.kosarica()
        )

@post('/stran_za_kupca/moja_kosarica')
def odstrani_iz_kosarice():
    knjiga = request.forms.knjiga
    kupec = request.forms.kupec
    izvodov = request.forms.izvodov
    modeli.odstrani_iz_kosarice(knjiga, kupec, izvodov)
    return template(
        'kosarica',
        knjige = modeli.kosarica()
        )

##--> RAČUN <--##
@route('/stran_za_kupca/nakup')
def nakup():
    return template(
        'nakup',
        knjige = modeli.kosarica()
    )

@post('/stran_za_kupca/nakup')
def poslji_racun():
    kupec = request.forms.kupec
    #modeli.poslji_racun(kupec)
    return "Račun je bil poslan na vaš elektronski naslov. \
Po plačilu računa bomo knjige poslali na vaš naslov. Zahvaljujemo se vam \
za nakup."

##-->PREDSTAVITEV KNJIGE<--##
@get('/stran_za_kupca/o_knjigi/<knjiga>')
def o_knjigi(knjiga):
    return template(
        'o_knjigi',
        knjiga=modeli.o_knjigi(knjiga)
    )
 
#==========================KODIRANJE GESEL====================================
import hashlib, binascii

def kodiraj(geslo):
    return hashlib.md5((geslo).encode()).hexdigest()
#=============================================================================

run(debug=True)
