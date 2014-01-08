class StudentLoan
	attr_reader :name
	attr_accessor :balance, :interest, :payment 
	def initialize(name, balance, interest, payment)
	 @name = name
	 @payment = Float(payment)
	 @interest = Float(interest)
	 @balance = Float(balance)
	end

	def add_interest
		balance + (balance * (interest/100.0))
	end
end