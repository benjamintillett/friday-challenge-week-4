class Array

	def my_inject(*args)
		if !block_given?
			array, method, accumulator = self, args.pop, args[0]
			accumulator = array.slice!(0) unless accumulator
			array.each { |element| accumulator = accumulator.send(method,element) }
			accumulator
		else
			array = self
			accumulator = array.slice!(0) 
			array.each { |element| accumulator = yield(accumulator,element) }
			accumulator
		end	
	end
end