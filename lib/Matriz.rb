#!/usr/bin/ruby

require 'matrix'

class Matriz
  
  def initialize (matrix, tam = matrix[0].size)
    @matrix = matrix
    @fila = matrix.size
    @columna = tam
  end
  
  attr_reader :matrix, :fila, :columna
    
  def mostrar #Funcion mostrar matriz
    x = y = 0 # inicializamos las variables
    puts "matriz: " 
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
  
  def to_s #Funcion mostrar matriz
    cadena = ""
    x = y = 0 # inicializamos las variables
    while x < fila # primer bucle
      while y < columna # segundo bucle
	cadena += " #{matrix[x][y]}"
        y += 1
      end
      cadena +="\n"
      x += 1
      y = 0
    end
    cadena
  end
  
    
  def +(o)
    raise unless (o.is_a? Matriz) and (fila == o.fila) and (columna == o.columna)
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
      Matriz.new(mat)
  end
  
  def *(o)
    raise unless (o.is_a? Matriz) and (fila == o.fila) and (columna == o.columna)
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
      Matriz.new(mat)
  end
end 

#m=Matriz.new([[1,2,3],[4,5,6]])
#puts m.to_s;