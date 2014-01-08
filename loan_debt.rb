require 'csv'
require_relative 'single_loan'

class LoanDebt
	def initialize(*loans)
		@loans = loans
	end

	def loan_total
		sum = 0.0
		@loans.each {|loan| sum += loan.balance }
		sum
	end

	def interest_total
		sum = 0.0
		@loans.each {|loan| sum += (loan.balance * (loan.interest/100))}
		sum	
	end			
end