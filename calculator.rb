require "rspec/autorun"

# calc = Calculator.new
# calc.add(5, 10)

describe Calculator do
    describe "#add" do
      it "adds two numbers" do
        calculator = Calculator.new
  
        expect(calculator.add(5, 10)).to eq(15)
      end
    end
  end