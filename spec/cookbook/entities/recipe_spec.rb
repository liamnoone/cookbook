require 'spec_helper'

describe Recipe do
	it 'can be initialized with attributes' do
		recipe = Recipe.new(name: "Some Recipe")
		recipe.name.must_equal "Some Recipe"
	end
end
