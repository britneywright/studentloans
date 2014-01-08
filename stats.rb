require 'csv'
require_relative 'loan_debt'

def loans_in_file csv_file_name
	loans = []

	CSV.foreach(csv_file_name, headers: true) do |row|
		loans << StudentLoan.new(row["Name"], row["Balance"], row["Interest"], row["Payment"])
	end

	loans
end	

loans = loans_in_file(ARGV[0])
STDOUT.puts "Processing student loans"

debt = LoanDebt.new(*loans)

puts "Total debt = $#{debt.loan_total}"

puts "Total interest accrued this month = $#{debt.interest_total.round(2)}"