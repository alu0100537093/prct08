require "matriz.rb"
require "fraccion.rb"


describe Matriz do

	before :each do

		@m1=Matriz.new([[2,5,3],[3,1,4],[1,2,3]])
		

	end


	it "Se suma correctamente 2 matrices con el operador +" do

		(@m1 + Matriz.new([[3,4,5],[5,3,2],[3,4,5]])).should == Matriz.new([[5,9,8],[8,4,6],[4,6,8]])

	end

	it "Se restan correctamente 2 matrices con el operador -" do

		(@m1 - Matriz.new([[1,4,2],[2,1,2],[1,0,1]])).should == Matriz.new([[1,1,1],[1,0,2],[0,2,2]])

	end
	
	it "Se multiplican correctamente 2 matrices con el operador *" do

		(@m1 * Matriz.new([[1,2,3],[1,1,1],[1,0,0]])).should == Matriz.new([[10,9,11],[8,7,10],[6,4,5]])

	end
	
	it "Se debe mostrar la traspuesta de una matriz" do
        
        @m1.traspuesta.should == Matriz.new([[2,3,1],[5,1,2],[3,4,3]])
	
	end


describe "Modificacion para poder trabajar con matrices formadas por fracciones" do

	before :each do
		
		@m2=Matriz.new([[Fraccion.new(1,2), Fraccion.new(1,2), Fraccion.new(1,3)],[Fraccion.new(1,2), Fraccion.new(1,2), Fraccion.new(1,3)],[Fraccion.new(1,2), Fraccion.new(1,2), Fraccion.new(1,3)]])
		@m3=Matriz.new([[Fraccion.new(1,2),Fraccion.new(1,2)], [Fraccion.new(1,2),Fraccion.new(1,2)], [Fraccion.new(1,2),Fraccion.new(1,2)]])
		@m4=Matriz.new([[Fraccion.new(3,4),Fraccion.new(3,4)], [Fraccion.new(3,4),Fraccion.new(3,4)], [Fraccion.new(3,4),Fraccion.new(3,4)]])
	end
	
	
	it "Suma de matrices formadas por fracciones" do
	
		(@m2 + @m2).should == Matriz.new([[Fraccion.new(1,1), Fraccion.new(1,1), Fraccion.new(2,3)], [Fraccion.new(1,1), Fraccion.new(1,1), Fraccion.new(2,3)], [Fraccion.new(1,1), Fraccion.new(1,1), Fraccion.new(2,3)]])
	
	end
	
	it "Producto de matrices formadas por fracciones" do
	
		(@m3*@m3).should == @m4
	
	end
end

end
