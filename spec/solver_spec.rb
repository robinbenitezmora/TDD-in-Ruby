require '../solver'

describe Solver do
  befor :all do
    @solver = Solver.new
  end

  context 'Class object' do
    it 'should be an instance of Solver' do
      expect(@solver).to be_an_instance_of(Solver)
    end
  end
end
