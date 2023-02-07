VALID_CHOICES = %w(rock paper scissors lizard spock)
WIN_CHOICES = [['rock', 'scissors'], ['paper', 'rock'], ['scissors', 'paper'],
               ['rock', 'lizard'], ['lizard', 'spock'], ['spock','scissors'],
               ['scissors', 'lizard'], ['lizard', 'paper'], ['paper', 'spock'],
               ['spock', 'rock']]

def prompt(message)
  Kernel.puts("=> #{message}")
end

def win?(first, second)
  WIN_CHOICES.include?([first, second])
end

def lose?(first, second)
  WIN_CHOICES.include?([second, first])
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

def end_game?(player_score, computer_score)
  if player_score == 3
    prompt("Player is the Winner!")
    true
  elsif computer_score == 3
    prompt("Computer is the Winner!")
    true
  else
    false
  end
end

def game
  player_score = 0
  computer_score = 0
  loop do
    choice = ''

    loop do
      prompt("Choose one: #{VALID_CHOICES.join(', ')}")
      choice = retrieve(Kernel.gets().chomp().downcase())

      break if valid?(choice)
      prompt("That's not a valid choice.")
    end

    computer_choice = VALID_CHOICES.sample

    prompt("You choose: #{choice}; Computer choose: #{computer_choice}")

    if win?(choice, computer_choice)
      player_score += 1
      prompt("You won this round!")
    elsif lose?(choice, computer_choice)
      computer_score += 1
      prompt("Computer won this round!")
    else
      prompt("It's a Tie!")
    end

    prompt("Score: \n Player: #{player_score} \n Computer: #{computer_score}")

    break if end_game?(player_score, computer_score)
  end
end

game()

while play_again?() do
  game()
end

prompt("Thank you for playing!")
