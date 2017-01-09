from bottle import route, run, template, post
import modeli


@route('/')
def domaca_stran():
    return template(
        'seznam_knjig.tpl',
        knjige=modeli.seznam_knjig(),
    )

@route('/registracija')
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
