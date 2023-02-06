VALID_CHOICES = ['rock', 'paper', 'scissors']

def prompt(message)
  Kernel.puts("=> #{message}")
end

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
  prompt("You win!")
elsif (choice == computer_choice)
  prompt("A tie!")
else
  prompt("Computer win!")
end
