#!/usr/bin/ruby

require 'matrix'

class Matriz
	def initialize (matrix, tamanio = matrix[0].size)
		@matrix = matrix
        @fila = matrix.size
        @columna = tam
	end
    
    attr_reader :matrix, :fila, :columna
    
    def mostrar #Funcion mostrar matriz
        x = y = 0 # inicializamos las variables
        puts "matrix: " 
        while x < fila # primer bucle
            while y < columna # segundo bucle
                print("#{matrix[x][y]}") #imprimimos en la posicion en la que se encuentre
                y += 1
            end
            puts
            x += 1
            y = 0
        end
    end
    
    def +(o)
    raise unless (o.is_a? Matrix) and (fila == o.fila) and (columna == o.columna)
      mat = []
      x = y = 0
      while x < fila
        while y < columna
          if y == 0
            mat << [matrix[x][y] + o.matrix[x][y]]
          else
            mat[x] << (matrix[x][y] + o.matrix[x][y])
          end
          y += 1
        end
        x += 1
        y = 0
      end
      Matrix.new(mat)
  end
  
    def *(o)
    raise unless (o.is_a? Matrix) and (fila == o.fila) and (columna == o.columna)
      mat = []
      x = y = 0
      while x < fila
        while y < columna
          if y == 0
            mat << [matrix[x][y] * o.matrix[x][y]]
          else
            mat[x] << (matrix[x][y] * o.matrix[x][y])
          end
          y += 1
        end
        x += 1
        y = 0
      end
      Matrix.new(mat)
  end
    
end 


