class Product
	attr_accessor :name, :azul, :rojo, :verde 
	def initialize(name, azul, rojo, verde)
		@name = name
		@azul = azul
		@rojo = rojo
		@verde = verde 
	end
end

def abrir_productos(archivo)
	arreglo = []
	File.open(archivo, "r") do |f|
		f.each_line do |line|
			arr = line.chomp.split(", ")
			arreglo << Product.new(arr[0], arr[1],arr[2],arr[3])
		end
	end
	return arreglo
end 	

a =  abrir_productos("Tienda_2.txt")
a.each do |i|
	puts i.name
end

def news_element(name,azul,rojo,verde)
	File.open("Tienda_2.txt","a") do |file|
		file.puts"#{name}, #{azul}, #{rojo}, #{verde}"
	end
end

puts "Ingrese el nombre del producto"
name = gets.chomp
puts "Ingrese stock color Azul"
azul = gets.chomp
puts "Ingrese stock color Rojo"
rojo = gets.chomp
puts "Ingrese stock color Verde"
verde = gets.chomp

news_element(name,azul,rojo,verde)





