
class Matriz

	attr_reader :fil, :col, :matrix

	def initialize(array)
		
		@matrix = array
		@fil = array.size
		@col = array.size
		
	
	end
	
	
	
	
	def +(other) #Sobrecarga del operador + para sumar dos matrices
		
		copia = @matrix
		for i in (0...@fil)
			for j in (0...@col)
				copia[i][j] = copia[i][j] + other.matrix[i][j]
			end
		end
	
	Matriz.new(copia)
	
	end
				

	def -(other) #Sobrecarga del operador - para restar dos matrices
		
		copia = @matrix
		for i in (0...@fil)
			for j in (0...@col)
				copia[i][j] = copia[i][j] - other.matrix[i][j]
			end
		end
	
	Matriz.new(copia)
	
	end

	def ==(other) #Sobrecarga del operador == para poder comprobar si dos matrices son iguales
	
		if @matrix == other.matrix
		
			true
		
		else
			
			false
		
		end
	
	end


end
