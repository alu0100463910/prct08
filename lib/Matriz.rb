#!/usr/bin/ruby

require 'matrix'

class Matriz
	def initialize (matrix, tamanio = matrix[0].size)
		@matrix = matrix
        @fila = matrix.size
        @columna = tam
	end
    
    attr_reader :matrix, :fila, :columna
    
    def mostrar
        x = y = 0
        puts "matrix: "
        while x < fila
            while y < columna
                print("#{matrix[x][y]}")
                y += 1
            end
            puts
            x += 1
            y = 0
        end
    end
end 


