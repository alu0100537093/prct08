require "lib/matriz.rb"

describe Matriz do
	before :each do

	@m1=Matriz.new([2,5,3],[3,1,4],[1,2,3]])

	end


	it "Se suma correctamente 2 matrices con el operador +" do

	(@m1 + Matriz.new([3,4,5],[5,3,2],[3,4,5]])) == Matriz.new([5,9,8],[8,4,6],[4,6,8]])

	end

	

end
