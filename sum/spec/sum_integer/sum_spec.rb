require 'sum'

describe Sum do
  context '#error_handler_integer_type' do
    it 'blocks other types' do
      instance = subject.error_handler_integer_type '10'
      expect(instance).to be_instance_of(Integer)
    end
  end
  context '#number_adder' do
    xit 'accepts not only other types' do
      instance = subject.number_adder 'default'
      expect(instance.class).to eq(Integer)
    end
  end
end

