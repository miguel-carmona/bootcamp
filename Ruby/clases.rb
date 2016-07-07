class GoodDog
    @@count = 0
    def initialize(nombre,edad)
        @name = nombre.capitalize
        @age = edad
        @@count += 1
    end

    def getName() 
    	@name
    end

    	def getAge() 
    	@age
    end

    def getCount ()
    	@@count
		end


    def setName(nombre)
    @name = nombre
end

def setAge(edad)
    @age = age
end

end

sparky = GoodDog.new("Sparky",4)
fido = GoodDog.new("Fido",6)
spot = GoodDog.new("Spot",10)

fido.setName("Oso")
puts fido.getName

