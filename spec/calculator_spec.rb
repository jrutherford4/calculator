require "calculator"

describe Calculator do

  let(:calc){ Calculator.new }

  describe "#add" do
    it "returns an integer" do
      expect(calc.add 1, 1).to be_an Integer
    end

    context "when adding zero to an integer" do
      it "returns the integer" do
        expect(calc.add 4, 0).to eq 4
      end
    end

    it "is not dependent on the operation order" do
      expect(calc.add 1, 2).to eq calc.add(2, 1)
    end

    it "accepts more than 2 arguments" do
      expect(calc.add 2, 4, 3).to eq 9
    end
  end

  describe "#subtraction" do

    it "returns an integer" do
      expect(calc.subtraction 3, 1).to be_an Integer
    end
    
    context "when subtraction of two numbers the correct calculation should be returned"do 
      it {expect(calc.subtraction 3, 1).to eq 2}
    end

    context "Correct subtraction is dependent on the operation order" do
      it {expect(calc.subtraction 3, 1).should_not eq calc.subtraction(1, 3)}
    end

    context "when subtracting zero from an integer the same number should be returned"do
      it {expect(calc.subtraction 3, 0).to eq 3}
    end

    context "subtacting an integer from itself should return zero" do
      it {expect(calc.subtraction 3, 3 ).to eq 0}
    end

    context "subtraction method should accept more than 2 numbers at a time" do
      it {expect(calc.subtraction 10, 5, 3).to eq 2}
    end
  end

  describe "#multiplication"do

    context "returns an integer" do
      it {expect(calc.multiplication 5).to be_an Integer}
    end

    context "the order of operation should not matter (commutative)"do
      it {expect(calc.multiplication 5, 3).to eq calc.multiplication(3, 5)}
    end

    context "multiplying an integer by one should return the first integer"do
      it {expect(calc.multiplication 5, 1).to eq 5}
    end

    context "multiplying an integer by zero should equal zero"do
      it {expect(calc.multiplication 5, 0).to equal 0}
    end

    context "should execpt more than two number"do
      it {expect(calc.multiplication 2, 2, 2).to eq 8}
    end
  end

  describe "#division"do

  context "returns and integer" do
    it {expect(calc.division 4, 2).to be_an Integer}
  end

  context "order of operation should matter" do
    it {expect(calc.division 4, 2).should_not eq calc.division(2, 4)}
  end

  context "dividing an Integer by the 1 should return the first Integer"do
    it {expect(calc.division 6, 1).to eq 6}
  end

  context "dividing zero by an Integer should return zero"do
    it {expect(calc.division 0, 6).to eq 0}
  end

  it "dividing an Integer by zero should raise an error"do
     expect{(calc.division 6, 0).to raise_error}
  end

  context "should except more than 2 numbers" do
    it {expect(calc.division 12, 2, 2).to eq 3}
  end
end
  end
