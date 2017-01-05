from bottle import route, run, template
import modeli


@route('/')
def domaca_stran():
    return template(
        'seznam_knjig.tpl',
        knjige=modeli.seznam_knjig(),
    )

run(debug=True)
