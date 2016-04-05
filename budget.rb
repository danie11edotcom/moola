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
-add items by name
-remove items
-update item estimate and actual amounts
-print budget
-save budget to a cv file on disk
-currency and curreny conversion
-display intergers with 2 decimals as money

=end

my_budget = Budget.new("Florida Vacay")
budget_item = BudgetItem.new("airfare")

puts my_budget.inspect
puts budget_item.inspect