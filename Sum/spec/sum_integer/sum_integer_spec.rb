require 'sum_integer'

describe SumInteger do
  it 'error_handler_wholy_type confirm if can is Integer' do
    calculatorx = SumInteger.new
    method_instance = calculatorx.error_handler_wholy_type '10'
    expect(method_instance).to be_instance_of(Integer)
  end

  it 'number_adder accepts only Integer' do
    calculatorx = SumInteger.new
    method_instance = calculatorx.number_adder 'default', 0
    expect(method_instance).to eq(15)
  end
end

