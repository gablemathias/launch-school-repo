require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')
LANGUAGE = 'en'

def messages(message, lang='en')
  MESSAGES[lang][message]
end

number1 = ''
number2 = ''

def prompt(key)
  message = messages(key, LANGUAGE)
  unless message.nil?
    puts("=> #{message}")
  else
    puts(key)
  end
end

def valid_number?(num)
  num.to_i.to_s == num || num.to_f.to_s == num
end

def operation_to_message(op)
  word = case op
         when '1'
           'Adding'
         when '2'
           'Subtracting'
         when '3'
           'Multiplying'
         when '4'
           'Dividing'
         end
  word
end

prompt('welcome')

name = ''
loop do
  name = gets.chomp

  if name.empty?
    prompt('valid_name')
  else
    break
  end
end

puts("#{MESSAGES[LANGUAGE]['hello']} #{name}")
loop do
  loop do
    prompt('first_number')
    number1 = gets.chomp

    if valid_number?(number1)
      break
    else
      prompt('valid_number')
    end
  end

  loop do
    prompt('second_number')
    number2 = gets.chomp

    if valid_number?(number2)
      break
    else
      prompt('valid_number')
    end
  end

  operator_prompt = 'choices'

  prompt(operator_prompt)

  operator = ''

  loop do
    operator = gets.chomp

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt('valid_choice')
    end
  end

  result = case operator
           when '1'
             number1.to_i + number2.to_i()
           when '2'
             number1.to_i - number2.to_i()
           when '3'
             number1.to_i * number2.to_i()
           when '4'
             number1.to_f() / number2.to_f()
           else
             prompt('invalid_operation')
           end

  puts("#{MESSAGES[LANGUAGE]['result']} #{result}")

  prompt('another_calculation?')
  answer = gets.chomp
  break unless answer.downcase().start_with?('y')
end

prompt('goodbye')
