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
    
end 


