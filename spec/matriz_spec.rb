require "fraccion.rb"
#require "rspec"

require "matrix"

describe Matrix do
  
  before :each do
    @matriz1 = Matrix.new([[1,2,3],[4,5,6]])
    @matriz2 = Matrix.new([[3,3,3],[3,3,3]])
  end
  
  it "Se debe poder sumar dos matrices de enteros" do
    (@matriz1+@matriz2).matrix.inspect.should == "[[4, 5, 6], [7, 8, 9]]"
  end
  
  it "Se debe poder multiplicar una matriz de Enteros" do
    (@matriz1*@matriz2).matrix.inspect.should == "[[3, 6, 9], [12, 15, 18]]"
  end
end
   
