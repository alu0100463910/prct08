require "fraccion.rb"
#require "rspec"

describe Fraccion do
  before :each do
    @p1 = Fraccion.new(1,1)
    @p2 = Fraccion.new(2,2)
    @p3 = Fraccion.new(2,8)
    @p4 = Fraccion.new(4,8)
  end 
  
  describe "numerador" do
    it { @p1.should respond_to :numerador }
  end
  
   describe "denominador" do
    it { @p1.should respond_to :denominador }
  end

  
  describe "# Probando reduccion de fracciones" do
    it "Debe de estar en su forma reducida" do
      @p3.numerador.should eq(1) 
    end
    it "Debe de estar en su forma reducida" do
      @p3.denominador.should eq(4)  
    end
  end
    describe "# Se debe mostar por la consola la fraccion de la forma: " do
     it "a/b" do
       @p2.to_s.should eq('1')
       @p3.to_s.should eq('1/4')
     end
  end
  
  describe "# Formato flotante" do
    it "Se debe mostar por la consola la fraccion en formato flotante" do
      @p3.numRacional.should eq(1/4)
    end
  end
  describe "#Comparacion" do
    it "Se debe comparar si dos fracciones son iguales con == " do
      @p4.should == Fraccion.new(10,20)
    end
  end 
  describe "#Valor Absoluto" do
  	it "Se debe calcular el valor absoluto de una fraccion con el metodo abs" do
  		Fraccion.new(-1,2).abs.should == @p4
  	end
  end
  describe "#Reciproco" do
  	it "Se debe calcular el reciproco de una fraccion con el metodo reciprocal" do
  		@p4.reciprocal.should == Fraccion.new(2,1)
  	end
  end
  describe "#Opuesto" do
  	it "Se debe calcular el opuesto de una fraccion con - " do
  		(-@p4).should == Fraccion.new(-4,8)
  	end
  end
  
  describe "#Suma de Fracciones con resultado de forma reducida" do
  	it "Se debe sumar dos fracciones con + y dar el resultado de forma reducida" do
  		(@p4 + Fraccion.new(6,5)).should == Fraccion.new(17,10)
  	end
  end
  
  describe "#Resta de Fracciones con resultado de forma reducida" do
  	it "Se debe restar dos fracciones con - y dar el resultado de forma reducida" do
  		(@p4 - Fraccion.new(6,5)).should == Fraccion.new(-7,10)
  	end
  end
  
  describe "#Multiplicaccion de Fracciones con resultado de forma reducida"  do
  	it "Se debe multiplicar dos fracciones con * y dar el resultado de forma reducida" do
  		(@p4 * Fraccion.new(6,5)).should == Fraccion.new(3,5)
  	end
  end
  
  describe "#Division de Fracciones con resultado de forma reducida"  do
  	it "Se debe dividir dos fracciones con / y dar el resultado de forma reducida" do
  		(@p4 / Fraccion.new(6,5)).should == Fraccion.new(5,12)
  	end
  end
  
  describe "#Resto de Fracciones con resultado de forma reducida" do
		it "Se debe calcular el resto dos fracciones con % y dar el resultado de forma reducida" do
		  (@p4 % Fraccion.new(6,5)).should == Fraccion.new(1,1)
		end
  end
  
  describe "#Fraccion Menor" do
		it "Se debe de poder comprobar si una fraccion es menor que otra" do
		  (@p4 < Fraccion.new(6,5)).should == true
		end
  end
  
  describe "#Fraccion Mayor" do
		it "Se debe de poder comprobar si una fraccion es mayor que otra" do
		  (@p4 > Fraccion.new(6,5)).should == false
		end
	end
  
  describe "#Fraccion Menor Igual" do
		it "Se debe de poder comprobar si una fraccion es menor o igual que otra" do
		  (@p4 <= Fraccion.new(6,5)).should == true
		end
	end
  
  describe "#Fraccion Mayor Igual" do
		it "Se debe de poder comprobar si una fraccion es mayor o igual que otra" do
		  (@p4 >= Fraccion.new(6,5)).should == false
		end
  end
  
    describe "#Valor Absoluto de dos Fracciones" do
		it "Se debe multiplicar dos fracciones y devolver el valor absoluto" do
		  valor = Fraccion.new(-1,2)*Fraccion.new(1,2)
		  valor.abs.should == Fraccion.new(1,4)
		end
  end

end

   
