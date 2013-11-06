require "matriz.rb"

describe Matriz do

	before :each do

	@m1=Matriz.new([[2,5,3],[3,1,4],[1,2,3]])

	end


	it "Se suma correctamente 2 matrices con el operador +" do

	(@m1 + Matriz.new([[3,4,5],[5,3,2],[3,4,5]])) == Matriz.new([[5,9,8],[8,4,6],[4,6,8]])

	end

	it "Se restan correctamente 2 matrices con el operador -" do

	(@m1 - Matriz.new([[1,4,2],[2,1,2],[1,0,1]])) == Matriz.new([[1,1,1],[1,0,2],[0,2,2]])

	end

end
