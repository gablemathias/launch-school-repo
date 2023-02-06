VALID_CHOICES = ['rock', 'paper', 'scissors']

def prompt(message)
  Kernel.puts("=> #{message}")
end

loop do
  choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = Kernel.gets().chomp().downcase()

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end

  computer_choice = VALID_CHOICES.sample
  prompt("You choose: #{choice}; Computer choose: #{computer_choice}")

  if (choice == 'rock' && computer_choice == 'scissors') ||
     (choice == 'paper' && computer_choice == 'rock') ||
     (choice == 'scissors' && computer_choice == 'paper')
    prompt("You won!")
  elsif (choice == computer_choice)
    prompt("A tie!")
  else
    prompt("Computer won!")
  end

  prompt("Do you want to play again?")
  answer = Kernel.gets().chomp().downcase

  break unless answer.start_with?('y')
end

prompt("Thank you for playing!")
