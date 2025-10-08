def rock_papers_scissors(player1, player2)
  choices = ["rock", "scissors", "papers"]
  rules = {
    "rock" => "scissors",
    "scissors" => "papers",
    "papers" => "rock"
  }

  unless choices.include?(player1) && choices.include?(player2)
    return "Please enter either papers, rock or scissors"
  end

  return "Draw" if player1 == player2
  return "Player 1 won" if rules[player1] == player2
  "Player 2 won"
end

puts rock_papers_scissors("rock", "papers")
puts rock_papers_scissors("al", "don't know")
