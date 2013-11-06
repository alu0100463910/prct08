require "Matriz.rb"


describe Matriz do
  
  before :each do
    @m1 = Matriz.new([[1,2,3],[4,5,6]])
    @m2 = Matriz.new([[3,3,3],[3,3,3],[3,3,3]])
    @m3 = Matriz.new([[3,3,3],[3,3,3]])
  end
  
  describe "Existe Metodo to string?" do
    it { @p1.should respond_to :to_s }
  end
  
  it "Se debe poder sumar dos matrices de enteros" do
    (@m1+@m3).matrix.inspect.should == "[[4, 5, 6], [7, 8, 9]]"
  end
  
  it "Se debe poder multiplicar una matriz de Enteros" do
    (@m1*@m2).matrix.inspect.should == "[[18, 18, 18], [45, 45, 45]]"
  end
end
   
