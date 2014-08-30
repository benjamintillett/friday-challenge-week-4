class Array

	def my_inject(*args)
		unless block_given?
			array, method, accumulator = self, args.pop, args[0]
			accumulator = array.slice!(0) unless accumulator
			array.each { |element| accumulator= accumulator.send(method,element) }
			accumulator
		end
	end
end