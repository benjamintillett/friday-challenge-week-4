class Array

	def my_inject(*args,&block)
		array = self
		if !block_given?
			method =  lambda &args.pop
			puts method.inspect
			accumulator = args[0]
			accumulator = array.slice!(0) unless accumulator
			array.each { |element| accumulator = method.call(accumulator,element) }
			accumulator
		else
			accumulator = args[0]
			accumulator = array.slice!(0) unless accumulator
			array.each { |element| accumulator = block.call(accumulator,element) }
			accumulator
		end	
	end
end