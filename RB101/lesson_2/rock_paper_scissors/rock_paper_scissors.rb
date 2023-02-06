VALID_CHOICES = ['rock', 'paper', 'scissors']
WIN_CHOICES = [['rock', 'scissors'], ['paper', 'rock'], ['scissors', 'paper']]

def prompt(message)
  Kernel.puts("=> #{message}")
end

def result(player, computer)
  if WIN_CHOICES.include?([player, computer])
    "You won!"
  elsif player == computer
    "A tie!"
  else
    "Computer won!"
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

loop do
  choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = Kernel.gets().chomp().downcase()

    break if valid?(choice)
    prompt("That's not a valid choice.")
  end

  computer_choice = VALID_CHOICES.sample

  puts result(choice, computer_choice)
  prompt("You choose: #{choice}; Computer choose: #{computer_choice}")

  break unless play_again?()
end

prompt("Thank you for playing!")
