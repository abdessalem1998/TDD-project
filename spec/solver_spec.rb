require_relative '../solver'

describe Solver do
  solver= Solver.new
  context 'factorial tests' do
    it 'returns 1 if input 0 or 1' do
      expect(solver.factorial(0)).to eq 1
      expect(solver.factorial(1)).to eq 1
    end

    it 'returns factorial of a positive number' do
      expect(solver.factorial(4)).to eq 24
    end

    it 'give an error when the number is negative' do
      expect {solver.factorial(-2)}.to raise_exception(TypeError)
    end
  end

  context 'reverse method tests' do
    it "reverse a word" do
      expect(solver.reverse('hi')).to eq 'ih'
    end

    it 'reverse a number' do
      expect(solver.reverse('122')).to eq '221'
    end

    it 'reverse a single char' do
      expect(solver.reverse('a')).to eq 'a'
    end

    it 'reverse two words with space' do
      expect(solver.reverse('hi there')).to eq 'ereht ih'
    end
  end

  context 'Testing the fizzbuzz method' do
    it 'returns fizz when n is divisible by 3' do
      expect(solver.fizzbuzz(3)).to eq 'fizz'
    end

    it 'returns buzz when n is divisible by 5' do
      expect(solver.fizzbuzz(5)).to eq 'buzz'
    end

    it 'returns fizzbuzz when n is divisible by 3 and 5' do
      expect(solver.fizzbuzz(15)).to eq 'fizzbuzz'
    end

    it 'number to be returned as a string' do
      expect(solver.fizzbuzz(7)).to eq '7'
    end
  end
end
