describe Array do 

	context "inject called on [1,2,3,4,5]" do 

		it "passed :+ will sum an array" do 
			expect([1,2,3,4,5].inject(:+)).to eq 15
		end 

	end

end