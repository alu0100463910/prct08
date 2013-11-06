require "Matriz.rb"


describe Matriz do
  
  before :each do
    @matriz1 = Matriz.new([[1,2,3],[4,5,6]])
    @matriz2 = Matriz.new([[3,3,3],[3,3,3]])
  end
  
  it "Se debe poder sumar dos matrices de enteros" do
    (@matriz1+@matriz2).matriz.inspect.should == "[[4, 5, 6], [7, 8, 9]]"
  end
  
  it "Se debe poder multiplicar una matriz de Enteros" do
    (@matriz1*@matriz2).matriz.inspect.should == "[[3, 6, 9], [12, 15, 18]]"
  end
end
   
