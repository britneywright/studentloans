require 'minitest/autorun'
require_relative 'single_loan'
require_relative 'loan_debt'

describe "StudentLoan" do

	before do
		@loan = StudentLoan.new("loan_a", 100, 6.5, 50)
	end

	it "should apply interest to the loan" do
		@loan.add_interest.round(2).must_equal 106.5
	end
end

describe "LoanDebt" do	
	before :all do
		@loan = [
		 StudentLoan.new("loan_a", 100, 6.5, 50),
		 StudentLoan.new("loan_a", 200, 6.0, 50)
		]
	end

	before :each do
		@loan_debt = LoanDebt.new(@loan)
	end	

	it "should total all student loan balances" do
		@loan_debt.loan_total.must_equal 100
	end

	it "total all student loans interest" do
		@loan_debt.interest_total.must_equal 6.5
	end	
end