require "Matriz.rb"


describe Matriz do
  
  before :each do
    @m1 = Matriz.new([[1,2,3],[4,5,6]])
    @m2 = Matriz.new([[3,3,3],[3,3,3],[3,3,3]])
    @m3 = Matriz.new([[3,3,3],[3,3,3]])
    @f1 = Fraccion.new(2,4)
    @f2 = Fraccion.new(1,3)
    @f3 = Fraccion.new(2,8)
    @matriz =Matriz.new([[@f1,@f2,@f3],[@f1,@f2,2]])
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
   
