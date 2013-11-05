#!/usr/bin/ruby

require 'matrix'

#Clase matriz
def Matriz
end





def mapmap(x)
  x.map { |xr| xr.map { |y| yield y}}
end
  

def to_m(a)
  a = a.split(/\n/)
  a = a.map { |r| r.split(/[\s+\n]/)}
  a = mapmap(a) {|x| x.to_i}
end



#Programa principal

 unless ARGV.size == 1
   STDERR.puts "Falta un argumento: Nombre del fichero."
   exit(-1)
 end


fichero = File.open(ARGV[0])
texto = fichero.read
a,b = texto.split(/\n\n+/)         

a = to_m(a)
b = to_m(b)

s = Array.new(b.size) { Array.new(a.size) }



#Multiplicacion de matrices

for i in 0...a.size do
  for j in 0...b.size do
    s[i][j]=0;
    for k in 0...b.size do
      s[i][j] += a[i][k] * b[k][j]
    end
  end
end

#Mostrar Multiplicacion
puts 
puts "Multipliacion de Matrices"
s.each do |x|
  puts x.join(" ")
end

#Suma de matrices
s[i][j]=0;
for i in 0...a.size do
  for j in 0...b.size do
    s[i][j] = a[i][j] + b[i][j]
  end
end

#Mostrar Suma
puts 
puts "Suma de Matrices"
s.each do |x|
  puts x.join(" ")
end
