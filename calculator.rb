require "rspec/autorun"

# calc = Calculator.new
# calc.add(5, 10)

class Calculator
    def add(a, b)
        
    end
end

describe Calculator do
    describe "#add" do
      it "adds two numbers" do
        calculator = Calculator.new
  
        expect(calculator.add(5, 10)).to eq(15)
      end
      it "returns the sums of two different arguments" do
        calc = Calculator.new
        expect(calc.add(1,2)) to eq(3)
      end
    end
  end