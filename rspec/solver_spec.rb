require_relative '../lib/solver'

describe Solver do
  solver = Solver.new

  context 'solver.factorial(integer)' do
    it 'solver.factorial(5) => 120' do
      expect(solver.factorial(5)).to eq 120
    end
    it 'solver.factorial(1) => 1' do
      expect(solver.factorial(1)).to eq 1
    end
    it 'solver.factorial(0) => 1' do
      expect(solver.factorial(0)).to eq 1
    end
    it 'solver.factorial(-1) => raise Error' do
      expect{solver.factorial(-1)}.to raise_error(StandardError)
    end
  end

  context 'solver.reverse(string)' do
    it "solver.reverse('Laylo') => 'olyaL" do
      expect(solver.reverse('Laylo')).to eq 'olyaL'
    end
    it "solver.reverse('Carlos Feliz') => 'zileF solraC" do
      expect(solver.reverse('Carlos Feliz')).to eq 'zileF solraC'
    end
    it "solver.reverse('zileF solraC') => 'Carlos Feliz'" do
      expect(solver.reverse('zileF solraC')).to eq 'Carlos Feliz'
    end
  end

  context 'Fizzbuzz"' do
    it 'Should return "fizz"' do
      expect(solver.fizzbuzz(3)).to eq 'fizz'
    end

    it 'Should return "buzz" when N divisible by 5' do
      expect(solver.fizzbuzz(5)).to eq 'buzz'
    end

    it 'Should return "fizzbuzz" when N divisible by 3 and 5' do
      expect(solver.fizzbuzz(15)).to eq 'fizzbuzz'
    end

    it 'Should return N when it is not divisible by 3 or 5' do
      expect(solver.fizzbuzz(7)).to eq '7'
    end
  end
end
