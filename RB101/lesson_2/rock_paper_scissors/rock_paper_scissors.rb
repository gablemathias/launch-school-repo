VALID_CHOICES = %w(rock paper scissors lizard spock)
WIN_CHOICES = [['rock', 'scissors'], ['paper', 'rock'], ['scissors', 'paper'],
               ['rock', 'lizard'], ['lizard', 'spock'], ['spock','scissors'],
               ['scissors', 'lizard'], ['lizard', 'paper'], ['paper', 'spock'],
               ['spock', 'rock']]

def prompt(message)
  Kernel.puts("=> #{message}")
end

def win?(first, second)
  if WIN_CHOICES.include?([first, second])
    "You won!"
  elsif WIN_CHOICES.include?([second, first])
    "Computer won!"
  else
    "It's a tie!"
  end
end

def valid?(choice)
  VALID_CHOICES.include?(choice)
end

def play_again?
  prompt("Do you want to play again?")
  answer = Kernel.gets().chomp().downcase
  answer.start_with?('y')
end

def retrieve(choice)
  choice = VALID_CHOICES.select {|elem| elem.start_with?(choice)}
  if choice.size > 1
    prompt("Choose between #{choice.join(', ')}")
    choice = gets().chomp()
    retrieve(choice)
  else
    choice.join
  end
end

loop do
  choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = retrieve(Kernel.gets().chomp().downcase())

    break if valid?(choice)
    prompt("That's not a valid choice.")
  end

  computer_choice = VALID_CHOICES.sample

  puts win?(choice, computer_choice)
  prompt("You choose: #{choice}; Computer choose: #{computer_choice}")

  break unless play_again?()
end

prompt("Thank you for playing!")
