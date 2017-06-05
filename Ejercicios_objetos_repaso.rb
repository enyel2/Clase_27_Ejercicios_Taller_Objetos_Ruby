# class T
# 	def foo
# 		m = 5
# 	end
# 	def bar
# 		#al poner un '+' es un erro ya que m no esta fenida dentro del metodo de bar
# 		m = 1
# 	end
# end

# p1 = T.new
# p1.foo
# p1.bar

# class T
# 	attr_reader :m
# 	def foo
# 		@m = 5
# 	end
# 	def bar
# 		@m += 1
# 	end
# end

# p1 = T.new

# p1.foo
# p1.bar
# puts p1.m 

# class Store
# 	attr_accessor :name
# 	def initialize(name)
# 		# falta el @ para inicialiar 
# 		@name = name
# 	end
# end

# store = Store.new("S1")
# puts store.name



