require "Matriz.rb"


describe Matriz do
  
  before :each do
    @m1 = Matriz.new([[1,2,3],[4,5,6]])
    @m2 = Matriz.new([[3,3,3],[3,3,3]])
  end
  
  describe "Existe Metodo to string?" do
    it { @p1.should respond_to :to_s }
  end
  
  it "Se debe poder sumar dos matrices de enteros" do
    (@m1+@m2).matriz.inspect.should == "[[4, 5, 6], [7, 8, 9]]"
  end
  
  it "Se debe poder multiplicar una matriz de Enteros" do
    (@m1*@m2).matriz.inspect.should == "[[3, 6, 9], [12, 15, 18]]"
  end
end
   
