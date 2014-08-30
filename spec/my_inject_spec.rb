require 'my_inject'

describe Array do 

	context "my_inject called on [1,2,3,4,5]" do 

		it "passed (:+) will sum the array" do 
			expect([2,3,4,5,6].my_inject(:+)).to eq 20
		end 

		it "passed (:*) will find the product of the array" do 
			expect([2,3,4,5,6].my_inject(:*)).to eq 720
		end 

		it "passed (30,:+) will sum the array and add 30" do
			expect([2,3,4,5,6].my_inject(30,:+)).to eq 50
		end 

	end

end