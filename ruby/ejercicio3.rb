class Empleado
    #Constructor
    def initialize(ganancia,horas_trabajadas,sueldo,nombre)
        if (ganancia > 1000000)
            puts "La ganancia no puede superar $1000000"
        else
            @ganancia = ganancia
        end

        if (horas_trabajadas > 24)
            puts "Las horas trabajadas no pueden superar 24"

        @ganancia = ganancia
        @horas = horas_trabajadas
        @sueldo = sueldo
        @nombre = nombre
    end
    #Métodos getters
    def getGanancia()
        @ganancia
    end
    def getHoras()
        @horas
    end
    def getSueldo()
        @sueldo
    end
    def getNombre()
        @nombre
    end
    #Métodos setters
    def setGanancia(ganancia)
        @ganancia = ganancia
    end
    def setHoras(horas)
        @horas = horas
    end
    def setSueldo(sueldo)
        @sueldo = sueldo
    end
    def setNombre(nombre)
        @nombre = nombre
    end




end
[]

puts "Cantidad de empleados: "
n = gets.chomp.to_i


if ((n>=1) and (n<=1000))

for i in 1..n

    puts "Empleado #{i}: "
    puts "Nombre: "
    puts "Ganancia: "
    ganancia = gets.chomp.to_i
    #retry if (ganancia > 1000000)
    puts "Horas trabajadas: "
    horas_trabajadas = gets.chomp.to_i
    #retry if (horas > 24)
    puts "Sueldo: "
    sueldo = gets.chomp.to_i
   # retry if (sueldo <= 0 || sueldo > 1000000)
   nombre = gets.chomp.to_i

    empleado = Empleado.new(nombre,ganancia,horas_trabajadas,sueldo)

    ArrayEmp.push(empleado)


end#Fin de for
    
    cant_despedidos = 0
    #Comparar el empleado con el resto
    for j in 1..ArrayEmp.length

        emp1 = ArrayEmp[j]

        for k in j+1..ArrayEmp.length

            emp2 = ArrayEmp[k]

            if (emp1.getGanancia() > emp2.getGanancia() and emp1.getHoras() < emp2.getHoras() and emp1.getSueldo() < emp2.getSueldo())
                puts "EL empleado #{emp1.getNombre} será despedido"
                cantidad_despedidos += 1
            end

        end

    end
else
    puts "Cantidad de empleados despedidos: #{cant_despedidos}"
end
end