#ejercicio 1 Calcular la suma de los cuadrados x^2 de los números entre 1 y n
=begin

puts "ingrese un numero"
total = 0
n = gets.to_i
for contador in 1..n
	elevar = contador**2
	total += elevar
end
puts total

=end


#ejercicio 2 Realizar un algoritmo que lea n números y obtener su promedio, el número menor y el número mayor.#
=begin
  puts "cuantos numero desea ingresar:"
  n = gets.chomp.to_i


  acum = 0
  max = 0
  min = Float:: MAX
  for i in 1..n
  	puts "ingrese numero #{i}"
  	num = gets.chomp.to_f
  	acum += num
  	if (num > max)
  		max = num
end

	if (num < min)
		min = num 

	end
end

prom = acum / n
puts "promedio: #{prom} - Min: #{min} - Max: #{max}"
=end


#ejercicio 3
=begin
puts "ingrese numero"
n= gets.chomp.to_i
for i in 1..20
	puts multiplicacion= n*i
end
=end




#reto
=begin
puts "ingrese un numero1 "
n = gets.chomp.to_icont =0
cont1=0
for i in 1...n
   if n%i==0
   cont +=i
   puts "divisor #{i}"
   end
end
puts cont
for i in 1...cont
   if cont%i==0
   cont1 +=i
   end
end
  if cont1== n
   puts " son amigos" 
   else 
   puts "no son amigos"
   end
=end



# El mismo objetivo del programa anterior con Ruby.
 
=begin
vect = [1, 2, 3, 4, 5]
sum = 0
vect.each do |number|
  sum += number
end
=end



#ejercicio
=begin
n= int(input("ingresa un numero "))
 
 if(n>0): print("el numero " + str(n) + " es positivo")
 else: print("el numero " + str(n) + " es negativo")
=end



#ejercicio3
puts "encuesta"

contar_tv_s = 0
contar_tv_n = 0
contar_tv_c = 0
contar_tv_b = 0
contar_tv_comprar_s = 0
contar_tv_comprar_n = 0



while true


	puts "tiene usted televisor (S/N)"
	tiene_tv = gets.chomp 
	tiene_tv = tiene_tv.upcase


	puts "le gusta a color o blanco y negro? (C/B)"
	es_color = gets.chomp
	es_color = es_color.upcase

	puts "compraria un televisor? (S/N)"
	comprar = gets.chomp
	comprar = comprar.upcase

	#algoritmo para realizar el conteo


	#contar los usuarios que tiene tv
	if tiene_tv == "S"
		contar_tv_s += 1
	elsif
	tiene_tv == "N"
	contar_tv_n += 1 
	else
		#Stand by
		
	end


	#contar los usuarios que tienen Tv a coloro a blanco y negro 
	if es_color == "C"
		contar_tv_c += 1
	elsif es_color == "B"
		contar_tv_b += 1
	else
		#Stand by
	end

	#contar los usuarios que les gustaria comprar un tv 
	if comprar == "S"
		contar_tv_comprar_s += 1
	elsif comprar = "N"
		contar_tv_comprar_n
		contar_tv_comprar_n += 1
	else
		#Stand by
	end

	puts "continuar la encuesta? (S/N)"
	continuar = gets.chomp
	continuar = continuar.upcase

	if continuar == "N"
		break;
			
end
end #fin del while

#calculo de porcentaje de usuarios que tiene y no tiene TV
por_tv_s = (contar_tv_s * 100.0) / (contar_tv_s + contar_tv_n)
por_tv_n = (contar_tv_n * 100.0) / (contar_tv_s + contar_tv_n)

#calculo de porcentaje de usuarios que quieren Tv a color o blanco y negro
por_tv_c = (contar_tv_c * 100.0) / (contar_tv_c + contar_tv_b)
por_tv_b = (contar_tv_b * 100.0) / (contar_tv_c + contar_tv_b)

#calculo de porcentaje de usuarios que quieren comprar un Tv
por_tv_comprar_s = (contar_tv_comprar_s * 100.0) / (contar_tv_comprar_s + contar_tv_comprar_n)
por_tv_comprar_n = (contar_tv_comprar_n * 100.0) / (contar_tv_comprar_s + contar_tv_comprar_n)

puts "usuarios que tienen Tv: #{contar_tv_s} - Representa: #{por_tv_s} % "
puts "usuarios que tienen Tv #{contar_tv_n} - Representa: #{por_tv_n} %"


puts "usuarios que les gusta a color: #{contar_tv_c} - Representa: #{por_tv_c} %"		
puts "usuarios que les gusta a blanco y negro #{contar_tv_b} - Representa: #{por_tv_b} %"

puts "Usuarios que les gustaria comprar un TV: #{contar_tv_comprar_s} - Representa: #{por_tv_comprar_s} %"
puts "Usuarios a los que no le gustaria comprar un Tv: #{contar_tv_comprar_n} - Representa: #{por_tv_comprar_n} %"