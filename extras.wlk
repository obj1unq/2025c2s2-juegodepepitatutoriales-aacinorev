import pepita.*

object silvestre {
    var property image = "silvestre.png"
    method position(){
        return game.at(pepita.position().x() , 2)
    }
}

object nido {
    var property position = game.center()
    
    method image() {
        return "nido.png"
    }
}

object derecha{
    method siguiente(position){
        return position.right(1)
    }
}

object izquierda{
    method siguiente(position){
        return position.left(1)
    }
}

object arriba{
    method siguiente(position){
        return position.up(1)
    }
}

object abajo{
    method siguiente(position){
        return position.down(1)
    }
}

object muro{
    var property position = game.at(7,3)
    var property image = "muro.png"
}


