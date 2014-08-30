require 'my_inject'

describe Array do 

	context "my_inject called on [1,2,3,4,5]" do 

		it "passed (:+) will sum the array" do 
			expect([1,2,3,4,5].my_inject(:+)).to eq 15
		end 

		# it "passed (30,) "

	end

end