class Average
  WORD_DEFAULT = 'default'
  ERROR_MESSAGE = 'It is not a number valid, try again'

  def caller_methods
    first_input_walker WORD_DEFAULT
    creator_data WORD_DEFAULT
    presenter_and_calculator_average
  end

  private

    def first_input_walker input
      while input.to_i == 0
        puts "\nInsert one number for sum!"
        input = gets.chomp

        input = WORD_DEFAULT if input == '0'

        error_handler_integer_type input
      end
      @first_valid_input = input
    end

    def creator_data number_or_average_command
      total_for_average = 0
      counter_iterations = 0
      while number_or_average_command != 'average'
        puts "Insert more one number or enter 'average'"
        number_or_average_command = gets.chomp

        total_for_average += number_or_average_command.to_i if number_or_average_command.to_i != 0 
        counter_iterations += 1 if number_or_average_command.to_i != 0

        error_handler_integer_type number_or_average_command
      end
      @total_for_average = total_for_average.to_f 
      @counter_iterations = counter_iterations
    end

    def error_handler_integer_type some_input
      begin
        Integer(some_input)
      rescue
        puts some_input == 'average' ? nil : ERROR_MESSAGE
      end
    end

    def presenter_and_calculator_average
      puts "The média is: #{(@total_for_average + @first_valid_input.to_f) / (@counter_iterations + 1)}"
    end  
end

avarager = Average.new
avarager.caller_methods