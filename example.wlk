

class EmpresaBonet {
    var bots = []

    method agregarBot(bot) {
        bots.add(bot)
    }

    method analizarTweet(tweet) {
        bots.forEach({bot => bot.analizarTweet(tweet)})
    }

}

object benito{
    var palabrasProhibidas = []

    method tienePalabrasProhibidas(tweet) {
        return tweet.palabras().any({p => palabrasProhibidas.contains(p)})
    }

    method analizarTweet(tweet) {
        if (self.tienePalabrasProhibidas(tweet)) {
            self.avisarALaPolicia(tweet)
        }
    }
    method avisarALaPolicia(tweet){
        policiar.denunciar(tweet)
    }
}

object policia{
    var tweetsDenunciados = []
    method tweetsDenunciados() {
        return tweetsDenunciados
    }

    method denunciar(tweet) {
        tweetsDenunciados.add(tweet)
    }
}

class BotPublicidad{
    var palabraPuntual
    var mensaje
    var link
    var usuario

    method contienePalabraPuntual(tweet) {
        return tweet.palabras().any({p => p == palabraPuntual})
    }
    method analizarTweet(tweet) {
        if (self.contienePalabraPuntual(tweet)) {
            self.responder(tweet)
        }
    }    
    method responder(tweet) {
        var respuesta = new Tweet()
        respuesta.usuario = usuario
        respuesta.palabras = [mensaje, link, "@" + tweet.usuario()]
        return respuesta
    }

}

class Tweet{
    var usuario
    var palabras

    method usuario(){
        return usuario
    }
    method palabras(){
        return palabras
    }
}
class Persona{
    var usuario

    method usuario(){
        return usuario
    }
    method escribirTweet(){
        return new Tweet(usuario, palabras)
        var tweet = new Tweet()
        tweet.usuario = usuario
        tweet.palabras = palabras
        return tweet
    }
}