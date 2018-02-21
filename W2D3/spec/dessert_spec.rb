require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef") }
  let(:teramisu) { Dessert.new("Teramisu", 100, chef) }


  describe "#initialize" do
    it "sets a type" do
    expect( teramisu.type ).to eq("Teramisu")
    end

    it "sets a quantity" do
      expect(teramisu.quantity).to eq(100)
    end

    it "starts ingredients as an empty array" do
      expect(teramisu.ingredients).to be_empty
    end


    it "raises an argument error when given a non-integer quantity" do
      expect { Dessert.new("hz", "string", chef)}.to raise_error(ArgumentError)
    end

  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      teramisu.add_ingredient("sugar")
      expect(teramisu.ingredients).to include("sugar")
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
      ingredients = ["sugar", "salt", "cream", "chocolate"]

      ingredients.each do |something|
        teramisu.add_ingredient(something)
      end

      expect(teramisu.ingredients).to eq(ingredients)
      teramisu.mix!
      expect(teramisu.ingredients).not_to eq(ingredients)
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
      teramisu.eat(50)
      expect(teramisu.quantity).to eq(50)
    end

    it "raises an error if the amount is greater than the quantity" do
      expect {teramisu.eat(110)}.to raise_error("not enough left!")
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do
      allow(chef).to receive(:titleize).and_return("Chef Tucker the Great Baker")
      expect(teramisu.serve).to eq("Chef Tucker the Great Baker has made 100 Teramisus!")
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do
      allow(chef).to receive(:bake).with(teramisu)
      teramisu.make_more
    end
  end
end
