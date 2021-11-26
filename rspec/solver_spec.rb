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
end