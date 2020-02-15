class Die
  def initialize(sides = 6)
    @sides = sides
  end

  # Remember: rolls have to be between 1 and the sides - the minimum you can move is one step!
  # See: http://www.ruby-doc.org/core-2.6.3/Kernel.html#method-i-rand
  def roll
    return rand(1..6)
  end
  
end

class RubyRacer
  attr_reader :players, :length
  # Should hold data about the race:
  # the players, their positions, the track length, etc.
  def initialize(players, length = 30, sides = 6)
    @die=Die.new(sides)
    @players=players
    @positions={}
    @length=length
    players.each {|x|@positions[x]=0} # every item from the players array start at 0.
  end

  # Returns true if a player has reached the finish line and false otherwise.
  def finished?
    @positions.any?{|k,v|v>=@length}
  end

  # Rolls the die and advances each player accordingly
  def advance_player!(player)
    @positions[player] += @die.roll
  end

  # Returns the winner if there is one, nil otherwise
  def winner
    @positions.key(@positions.values.max)
  end

  # Prints the current game board
  # The board should have the same dimensions each time
  def print_gameboard
    @positions.each  do |k,v| #positions is an object, so as the v increases
  		line=Array.new(@length) {" "}
  		line[v]=k  #set Position  
      puts line.join("|")
  		end
  end

  # For Part 2:
  # Prints the ranking board (Scoreboard)
  def print_scoreboard
    for i in 1..players.length-1#
    # @positions.each do |k,v|
      p "#{i}.: #{winner} #{i}nd:" * players.length
      p "#{i}"
  end
  end

end


 #### HELPER CODE - DO NOT EDIT THIS SECTION ####
 
# The following methods will help us
# to update the screen when printing the board.
# We don't need to test these methods.
def reset_screen
  clear_screen
  move_to_home
end

# Clears the content on the terminal.
def clear_screen
  print "\e[2J"
end

# Moves the insert point in the terminal to the upper left.
def move_to_home
  print "\e[H"
end

 #### END HELPER CODE ####

 #### DRIVER CODE - DO NOT EDIT BELOW FOR PART 1 ####

players = [:a, :b]
# p "How many players?"
# playerCount = gets.chomp.to_i
# for i in 1..playerCount
#   p "Enter Player #{i}'s name "
#   playerName = gets.chomp.downcase
#   playerName = playerName[0].upcase + playerName[1]
#   players.push(playerName)
# end
game = RubyRacer.new(players)

# Clear the screen and print the board with players in their starting positions.
# Then pause, so users can see the starting board. The fun can begin!
reset_screen
puts game.print_gameboard
sleep(1)

# Run the race.
until game.finished?
  # Do this each round until the race is finished.

  players.each do |player|

    # Move a player forward.
    game.advance_player!(player)

    # Now that the player has moved,
    # reprint the board with the new player positions
    # and pause so users can see the updated board.
    reset_screen
    puts game.print_gameboard
    p game.print_scoreboard
    # We need to sleep a little, otherwise the game will blow right past us.
    # See http://www.ruby-doc.org/core-2.6.3/Kernel.html#method-i-sleep
    sleep(0.2)

  end 
end

# Once the race is finished, report the winner.
puts "Player '#{game.winner}' wins!"

 #### END OF DRIVER CODE ####