require_relative '../solver' 

# This is a test suite for the solver class
# Each test is a method that is called by the test runner
# The test runner will call each test and report the results
# The test runner will also report the total number of tests
# and the number of tests that passed
# The first test will fail, because the solver class is not yet implemented

describe Solver do
  before :all do
    @solver = Solver.new
  end

  context 'Class object' do
    it 'should be an instance of Solver' do
      expect(@solver).to be_an_instance_of(Solver)
    end
  end

  context 'Factorial methods' do
    it 'should not accept more than 1 argument' do
      expect { @solver.factorial(7, 8) }.to raise_error(ArgumentError)
    end

    it 'should not accept negative numbers' do
      expect { @solver.factorial(-7) }.to raise_error(ArgumentError)
    end

    it 'should return 1 for 0' do
      expect(@solver.factorial(0)).to eq(1)
    end

    it 'should return 1 for 1' do
      expect(@solver.factorial(1)).to eq(1)
    end

    it 'should return 120 for 5' do
      expect(@solver.factorial(5)).to eq(120)
    end

    it 'should return 3628800 for 10' do
      expect(@solver.factorial(10)).to eq(3628800)
    end
  end

  context 'Reverse methods' do
    it 'should not accept more than 1 argument' do
      expect { @solver.reverse('a', 'b') }.to raise_error(ArgumentError)
    end

    it 'should not accept numbers' do
      expect { @solver.reverse(7) }.to raise_error(ArgumentError)
    end

    it 'should return "olleh" for "hello"' do
      expect(@solver.reverse('hello')).to eq('olleh')
    end

    it 'should return "dlrow olleh" for "hello world"' do
      expect(@solver.reverse('hello world')).to eq('dlrow olleh')
    end
  end

  context 'FizzBuzz methods' do
    it 'should not accept more than 1 argument' do
      expect { @solver.fizzbuzz(7, 8) }.to raise_error(ArgumentError)
    end

    it 'should return "Fizz" for 3' do
      expect(@solver.fizzbuzz(3)).to eq('Fizz')
    end

    it 'should return "Buzz" for 5' do
      expect(@solver.fizzbuzz(5)).to eq('Buzz')
    end

    it 'should return "FizzBuzz" for 15' do
      expect(@solver.fizzbuzz(15)).to eq('FizzBuzz')
    end

    it 'should return "FizzBuzz" for 30' do
      expect(@solver.fizzbuzz(30)).to eq('FizzBuzz')
    end

    it 'should return n as string when n is not divisible by 3 or 5' do
      expect(@solver.fizzbuzz(2)).to eq('2')
    end

    it 'should return n as a number when n is not divisible by 3 or 5' do
      expect(@solver.fizzbuzz(2)).not_to eq(2)
    end
  end
end
