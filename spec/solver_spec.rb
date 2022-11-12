require_relative '../solver'

describe Solver do
  before :each do
    @solver = Solver.new
  end

  describe '#new' do
    it 'creates a new instance of the solver class' do
      @solver.should(be_an_instance_of(Solver))
    end
  end

  describe 'tests to check the factorial method' do
    it 'returns only positive integers allowed if a negative value is passed' do
      -> { @solver.factorial(-2) }.should raise_error 'only positive integers allowed'
    end

    it 'returns only positive integers allowed if a negative value is passed' do
      -> { @solver.factorial(10, 20) }.should raise_error ArgumentError
    end

    it 'returns only positive integers allowed if a string is passed' do
      -> { @solver.factorial('5') }.should raise_error 'only positive integers allowed'
    end

    it 'returns the factorial of that number' do
      expect(@solver.factorial(10)).to eql 3_628_800
    end
  end

  describe 'test for reverse method' do
    it 'should return an error message when a number is passed instead of a string' do
      -> { @solver.reverse(2) }.should raise_error 'only strings are allowed as arguments'
    end

    it 'should reverse the value of the string' do
      expect(@solver.reverse('hello')).to eql 'olleh'
    end
  end

  describe 'test for fizzbuzz method' do
    it 'validates that not accepts more than one arguments' do
      expect { @solver.fizzbuzz(10, 20) }.to raise_error(ArgumentError)
    end

    it 'validates that not accepts a string as argument' do
      expect { @solver.fizzbuzz('20') }.to raise_error('only positive integers are allowed as arguments')
    end

    it "validates if returns 'fizz'when NUM is divisible by 3" do
      expect(@solver.fizzbuzz(12)).to eq('fizz')
    end

    it "validates if returns 'buzz' when NUM is divisible by 5" do
      expect(@solver.fizzbuzz(20)).to eq('buzz')
    end

    it "validates if returns 'fizzbuzz' when NUM is divisible by 3 and 5" do
      expect(@solver.fizzbuzz(15)).to eq('fizzbuzz')
    end

    it 'validates if returns random value with no result in any other case' do
      expect(@solver.fizzbuzz(16)).to eq('random value with no result')
    end
  end
end
