class Carta
attr_accessor :pinta ,:numero

	def initialize(numero, pinta)
		@numero = numero
		@pinta = pinta
	end
	
	def mostrar
		puts"#{@numero} de #{@pinta} "
	end
end
numeros = ["A",2,3,4,5,6,8,9,10,"J","Q","K"]
pintas = ["Corazon","Diamante","Trebol","Pica"]

##creando el array
i = 0
arr = []
while (i<5)
	arr[i] = Carta.new(numeros.sample, pintas.sample)
	i += 1
end
##array para guardar las cartas
arr_new = []
i = 0
while (i < arr.length)
	arr_new.push(arr[i].numero, arr[i].pinta)
	i += 1
end
##guardado de las cartas
def news_element(new)
	file = File.open("cartas_elegidas.txt","w") do |file|
	file.puts "#{new}"
	end
end
##para leer las cartas
def cuenta_lineas(docu)
	file = File.open(docu, "r")
	contens = file.readlines
	return contens
end

opcion = 0
while (opcion != "salir")
	puts "1.-Si ingresa la palabra 'jugar' se generar 5 cartas al azar "
	puts "2.-Si ingresa la palabra 'guardar' se guardaran las cartas en un archivo "
	puts "3.-Si ingresa la palabra 'mostrar' mostrara las cartas que se generaron al azar "
	puts "4.-Si ingresa la palabra 'leer' se leeran las cartas guardadas en el archivo"
	puts "5.-Si ingresa la palabra 'salir' se saldra el programa "
	opcion = gets.chomp

	if(opcion == "jugar" || opcion == "guardar" || opcion == "mostrar" || opcion == "leer" || opcion == "salir")
		case opcion
			when "jugar"
				puts "se han generado cinco cartas"
		
			when "guardar"
				news_element(arr_new)
				puts "se han guardado tus 5 cartas"
			when "mostrar"
				arr.each do |x|
					puts x.mostrar
				end
			when "leer"
				puts cuenta_lineas("cartas_elegidas.txt")

				puts "leyendo tus cartas"
			when "salir"
				puts "salir del programa"
		end
	else 
		puts "Ingresa una opcion correcta."
	end	
end
