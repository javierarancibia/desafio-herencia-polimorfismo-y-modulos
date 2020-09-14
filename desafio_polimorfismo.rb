class Person

    attr_reader :first, :last, :age

    def initialize(first, last, age)
    @first_name = first
    @last_name = last
    @age = age
    end
   
    def birthday
        puts @age
    end

    def talk
    end
        

    def introduce
    end
end



class Student < Person

    def birthday
        super
    end

    def talk
        super
        puts "Aquí es la clase de programación con Ruby?"
    end

    def introduce
        super
        puts "Hola profesor. Mi nombre es #{@first_name} #{@last_name}."
    end
    
end

class Teacher < Person

    def birthday
        super
    end

    def talk
        super
        puts "Bienvenidos a la clase de programación con Ruby!"
    end

    def introduce
        super
        puts "Hola alumnos. Mi nombre es #{@first_name} #{@last_name}."
    end
    
end

class Parent < Person

    def birthday
        super
    end

    def talk
        super
        puts "Aquí es la reunión de apoderados?"
    end

    def introduce
        super
        puts "Hola. Soy uno de los apoderados. Mi nombre es #{@first_name} #{@last_name}."
    end
    
end

estudiante = Student.new('Charles', 'Aranguiz', 30)
estudiante.introduce
estudiante.talk

profesor = Teacher.new('Lio', 'Messi', 32)
profesor.introduce
profesor.talk

apoderado = Parent.new('Claudio', 'Bravo', 37)
apoderado.introduce
apoderado.talk







    
