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
end
