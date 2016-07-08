class TipoProducto
	PELICULA = 1
	VIDEOJUEGO = 2
end
class Alquilado
	SI = true
	NO = false
end

class Producto

	attr_reader :titulo,:tipo,:precio_alquiler,:plazo_alquiler,:alquilado
	attr_writer :titulo,:tipo,:precio_alquiler,:plazo_alquiler,:alquilado

	end

producto = Producto.new
producto.titulo = "Pelicula Extranjera"
producto.tipo = TipoProducto::NO
producto.precio_alquiler = 2200.0
producto.plazo_alquiler = 10
producto.alquilado = Alquilado::NO

puts  "Titulo: #{producto.titulo}"
puts  "Tipo: #{producto.tipo}"
puts  "Precio Alquiler: #{producto.precio_alquiler}"
puts  "Plazo Alquiler: #{producto.plazo_alquiler}"
puts  "Alquilado?: #{producto.alquilado}"