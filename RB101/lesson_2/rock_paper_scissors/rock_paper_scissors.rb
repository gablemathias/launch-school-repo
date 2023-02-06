VALID_CHOICES = %w(rock paper scissors)
WIN_CHOICES = [['rock', 'scissors'], ['paper', 'rock'], ['scissors', 'paper']]

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

loop do
  choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = Kernel.gets().chomp().downcase()

    break if valid?(choice)
    prompt("That's not a valid choice.")
  end

  computer_choice = VALID_CHOICES.sample

  puts win?(choice, computer_choice)
  prompt("You choose: #{choice}; Computer choose: #{computer_choice}")

  break unless play_again?()
end

prompt("Thank you for playing!")
