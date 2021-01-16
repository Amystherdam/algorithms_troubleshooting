class Sum
  WORD_DEFAULT = 'default'
  ERROR_MESSAGE = 'It is not a number valid, try again'

  def calculator
    first_input_number = WORD_DEFAULT
    number_or_sum_command = WORD_DEFAULT
    total_sum = 0
    first_input_walker first_input_number
    number_adder number_or_sum_command, total_sum
    presenter_sum
  end

  def first_input_walker first_input_number
    while first_input_number.to_i == 0
      puts "\nInsert one number for sum!"
      first_input_number = gets.chomp
    
      first_input_number = WORD_DEFAULT if first_input_number == '0'
      
      error_handler_wholy_type first_input_number
    end
    @first_input_number = first_input_number
  end

  def number_adder number_or_sum_command, total_sum
    while number_or_sum_command != 'sum'
      puts "Insert more one number or enter 'sum'"
      number_or_sum_command = gets.chomp

      total_sum += number_or_sum_command.to_i if number_or_sum_command.to_i != 0 
      
      error_handler_wholy_type number_or_sum_command
    end
    @total_sum = total_sum
  end

  def error_handler_wholy_type some_input
    begin
      Integer(some_input)
    rescue
      puts some_input == 'sum' ? nil : ERROR_MESSAGE
    end
  end

  def presenter_sum
    puts "Total of sum: #{@total_sum + @first_input_number.to_i}"
  end  
end