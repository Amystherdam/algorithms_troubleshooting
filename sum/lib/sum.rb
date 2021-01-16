class Sum
  INITIAL_VALUE = 'default'
  ERROR_MESSAGE = 'It is not a number valid, try again'

  def system_initializer
    total_sum = 0
    first_input_walker INITIAL_VALUE
    number_adder INITIAL_VALUE
    presenter_and_calculator_sum
  end

  def first_input_walker input
    while input.to_i == 0
      puts "\nInsert one number for sum!"
      input = gets.chomp
    
      input = INITIAL_VALUE if input == '0'
      
      error_handler_integer_type(input)
    end
    @first_valid_input = input
  end

  def number_adder number_or_sum_command
    total_sum = 0
    while number_or_sum_command != 'sum'
      puts "Insert more one number or enter 'sum'"
      number_or_sum_command = gets.chomp

      total_sum += number_or_sum_command.to_i if number_or_sum_command.to_i != 0 
      
      error_handler_integer_type(number_or_sum_command)
    end
    @total_sum = total_sum
  end

  def error_handler_integer_type some_input
    begin
      Integer(some_input)
    rescue
      puts ERROR_MESSAGE unless some_input == 'sum'
    end
  end

  def presenter_and_calculator_sum
    puts "Total of sum: #{@total_sum + @first_valid_input.to_i}"
  end  
end