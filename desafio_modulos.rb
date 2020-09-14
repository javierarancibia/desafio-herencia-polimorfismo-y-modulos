require_relative 'modulos'


class Animal
    attr_reader :nombre
    def initialize(nombre)
        @nombre = nombre


    end

end

class Ave < Animal


end

class Mamifero < Animal


end

class Insecto < Animal


end

class Pinguino < Ave
    include Habilidades::Nadador
    include Habilidades::Caminante
    include Alimentacion::Carnivoro
    
    def initialize(nombre)
        super
    end

end

class Paloma < Ave
    include Habilidades::Volador
    include Habilidades::Caminante
    include Alimentacion::Herbivoro
    def initialize(nombre)
        super
    end
end

class Pato < Ave
    include Habilidades::Volador
    include Habilidades::Nadador
    include Habilidades::Caminante
    include Alimentacion::Herbivoro
    def initialize(nombre)
        super
    end

end

class Perro < Mamifero
    include Habilidades::Nadador
    include Habilidades::Caminante
    include Alimentacion::Carnivoro
    def initialize(nombre)
        super
    end

end

class Gato < Mamifero
    include Habilidades::Caminante
    include Alimentacion::Carnivoro
    def initialize(nombre)
        super
    end

end

class Vaca < Mamifero
    include Habilidades::Caminante
    include Alimentacion::Herbivoro
    def initialize(nombre)
        super
    end

end

class Mosca < Insecto
    include Habilidades::Volador
    include Habilidades::Caminante
    include Alimentacion::Carnivoro
    def initialize(nombre)
        super
    end
end

class Mariposa < Insecto
    include Habilidades::Volador
    include Habilidades::Caminante
    include Alimentacion::Herbivoro
    def initialize(nombre)
        super
    end
end

class Abeja < Insecto
    include Habilidades::Volador
    include Habilidades::Caminante
    include Alimentacion::Herbivoro
    def initialize(nombre)
        super
    end
end



pinguino = Pinguino.new('Pinguino')
puts pinguino.nadar
puts pinguino.sumergir
puts pinguino.comer

paloma = Paloma.new('Paloma')
puts paloma.volar
puts paloma.aterrizar
puts paloma.caminar

abeja = Abeja.new('Abeja')
puts abeja.volar
puts abeja.caminar
puts abeja.comer