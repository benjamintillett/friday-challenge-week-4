describe Array do 

	context "inject called on [1,2,3,4,5] with parameters" do 

		it "passed (:+) will sum the array" do 
			expect([2,3,4,5,6].inject(:+)).to eq 20
		end 

		it "passed (:*) will find the product of the array" do 
			expect([2,3,4,5,6].inject(:*)).to eq 720
		end 

		it "passed (30,:+) will sum the array and add 30" do
			expect([2,3,4,5,6].inject(30,:+)).to eq 50
		end 

		it "passed (30,:*) will find the product of the array * 30" do
			expect([2,3,4,5,6].inject(30,:*)).to eq 21600
		end 
	end

	context "inject called on [1,2,3,4,5] with a block" do

		it "passed an empty block returns nil" do 
			expect([1,2,3,4,5].inject{}).to eq nil
		end 
		it "passed { 1 } returns 1" do
			expect([1,2,3,4,5].inject{ 1 }).to eq 1
		end
		it "passed { |memo,element| memo + element } returns 15" do
			expect([1,2,3,4,5].inject{ |memo,element| memo + element }).to eq 15
		end 
	end
end