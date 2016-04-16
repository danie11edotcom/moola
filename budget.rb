# file storing Budget class and incorporating BudgetItem class via require

require "./budget_item"

class Budget
	attr_reader :name, :budget_items

	#name budget and create empty array for budget items when new budget is created
	def initialize(name)
	 @name = name
	 @budget_items = []
	end

	#add new budget items to array by name
	def add_item(name)
	 budget_items.push(BudgetItem.new(name))
	end
end

=begin

Budget functionality
-create & name
-consider using hashes for estimate and actual amount storage and accesibility
-add items by name
-remove items
-update item estimate and actual amounts
-print budget
-save budget to a cv file on disk
-currency and currency conversion
-display intergers with 2 decimals as money

=end

my_budget = Budget.new("Florida Vacay")
food = my_budget.add_item("food")
puts my_budget.inspect

=begin
budget_item = BudgetItem.new("airfare")

puts my_budget.inspect
puts budget_item.inspect
puts budget_item.estimate(500)
puts budget_item.actual(450)
puts budget_item.inspect

=end

