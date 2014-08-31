class Array

	def my_inject(*args,&block)
		array = self
		block = lambda &args.pop unless block_given?
		accumulator = args[0]
		accumulator = array.slice!(0) unless accumulator
		array.each { |element| accumulator = block.call(accumulator,element) }
		accumulator
	end
end