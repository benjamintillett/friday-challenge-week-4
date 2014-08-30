class Array

	def my_inject(memo=nil,method)
		# if memo
		# 	array = [memo] + self  
		# array = self unless memo
		# memo ||= self[0]
		# p array; puts memo
		
		# if memo  
		# 	array = self 
		# else
		# 	array = self[1..-1]
		# 	memo ||= self[0]
		# end

	  
		array = self 
		memo = array.slice!(0) unless memo 
			
		
				






		array.each { |element| memo = memo.send(method,element) }
		memo
	end
end