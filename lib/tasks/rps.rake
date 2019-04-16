desc "Play rock in rock-paper-scissors"
task :play_rock do
  # Print the move we played
  ap("We played rock.")

  # Select a random move for the computer
  moves = ["rock", "paper", "scissors"]
  
  cpu_move = moves.sample

  # Print the move the computer played
  ap("The computer chose #{cpu_move}.")

  # Print the outcome of the game
  if cpu_move == "rock"
    ap("We tied!")
  elsif cpu_move == "paper"
    ap("We lost!")
  else
    ap ("We won!")
  end
  
end

desc "Play paper in rock-paper-scissors"
task :play_paper do
  
  # Print the move we played
  ap("We played paper.")

  # Select a random move for the computer
  moves = ["rock", "paper", "scissors"]
  
  cpu_move = moves.sample

  # Print the move the computer played
  ap("The computer chose #{cpu_move}.")

  # Print the outcome of the game
  if cpu_move == "rock"
    ap("We won!")
  elsif cpu_move == "paper"
    ap("We tied!")
  else
    ap ("We lost!")
  end

end

desc "Play scissors in rock-paper-scissors"
task :play_scissors do
  
  # Print the move we played
  ap("We played scissors.")

  # Select a random move for the computer
  moves = ["rock", "paper", "scissors"]
  
  cpu_move = moves.sample

  # Print the move the computer played
  ap("The computer chose #{cpu_move}.")

  # Print the outcome of the game
  if cpu_move == "rock"
    ap("We lost!")
  elsif cpu_move == "paper"
    ap("We won!")
  else
    ap ("We tied!")
  end
  
end
