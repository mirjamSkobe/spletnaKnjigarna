from bottle import *
from bottlesession import session
import modeli

seja = session()
seja.set('vpisani_ime', 'gost')
seja.set('vpisani_ID', '')

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
    modeli.dodaj_v_kosarico(knjiga, kupec)
    redirect('/stran_za_kupca/moja_kosarica')

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
    modeli.dodaj_v_kosarico(knjiga, kupec)
    redirect('/stran_za_kupca/moja_kosarica')

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
    vpis = modeli.preveri_vpis(uporabnisko_ime, geslo)  #modeli.vpis vrne ID kupca
    if vpis == False:
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
@post('/')
def prijavare():
    uporabnisko_ime = request.forms.uporabnisko_ime
    geslo = request.forms.geslo
    vpis = modeli.preveri_vpisA(uporabnisko_ime, geslo)
    if geslo != 'admin1234':
        return "<p>Neuspešna prijava</p>"
    else:
        seja.set('vpisani_ime', uporabnisko_ime)
        seja.set('vpisani_ID', vpis)
        redirect('/vstopKnjigarnar')


##--> IZPIS LASTNIKA <--##
@route('/stran_za_kupca/izpis')
def izpis_lastnik():
    seja.set('vpisani_ime', 'gost')
    seja.set('vpisani_ID', '')
    return "Uspešno ste se izpisali.<br><br>" +\
           "<a href=\"/stran_za_kupca\">Nazaj v knjigarno</a>"

#==========================KODIRANJE GESEL====================================
import hashlib, binascii

def kodiraj(geslo):
    return hashlib.md5((geslo).encode()).hexdigest()
#=============================================================================

run(debug=True)
