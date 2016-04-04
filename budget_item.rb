# file storing BudgetItem class

class BudgetItem
  attr_reader :name, :difference, :over_budget
	attr_accessor :estimate, :actual

	#initalize class with a name and set amounts equal to zero and overbudget as false
	def initialize(name)
	 @name = name
	 @estimate = @actual = 0
	 @difference = @estimate - @actual
	 @overbudget = false
	end

	#methods to set estimate and actual amount for budget items
	def estimate(estimate)
	 @estimate = estimate
	end

	def actual(actual)
	 @actual = actual
	end

=begin

	#method to check if item is over/under budget
	def overbudget?
		if @actual > @estimate
			@overbudget = true
		else
			@overbudget = false
		end
	end

=end

end