class Array

	def my_inject(method)
		memo = 0
		self.each { |element| memo = memo.send(method,element) }
		memo
	end
end