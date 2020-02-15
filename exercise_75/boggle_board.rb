class BoggleBoard

  DICE = [
    ["A", "A", "E", "E", "G", "N"], 
    ["E", "L", "R", "T", "T", "Y"], 
    ["A", "O", "O", "T", "T", "W"], 
    ["A", "B", "B", "J", "O", "O"], 
    ["E", "H", "R", "T", "V", "W"], 
    ["C", "I", "M", "O", "T", "U"], 
    ["D", "I", "S", "T", "T", "Y"], 
    ["E", "I", "O", "S", "S", "T"], 
    ["D", "E", "L", "R", "V", "Y"], 
    ["A", "C", "H", "O", "P", "S"], 
    ["H", "I", "M", "N", "Q", "U"], 
    ["E", "E", "I", "N", "S", "U"], 
    ["E", "E", "G", "H", "N", "W"], 
    ["A", "F", "F", "K", "P", "S"], 
    ["H", "L", "N", "N", "R", "Z"], 
    ["D", "E", "I", "L", "R", "X"]
  ]

    def initialize
      @board = Array.new(4){Array.new(4, "_")}
    end

    def roll(die)
      result = die.sample
      if result == "Q"
        "Qu"
      else
        result
      end
    end

    def shake!
      @board = DICE.shuffle.map do |die_arr|  #shuffles the DICE arrays.
        # roll(die_arr) # .sample method randomly picks 1 item out of each nested array, bc die_arr iterates thru the array. there are 16 arrays in DICE.
        die_arr.sample
        end.each_slice(4).to_a #seperates the 16 elements into the array into 4 nested arrays
    end

  # Defining to_s on an object controls how the object is
  # represented as a string, e.g., when you pass it to puts
  def to_s
    @board.inject('') do |str,row| # starts with an empty String,str
      str << "#{row.join(' ')}\n"  #row is the iterator, iterates thru everything in the array and join them by a space, and adds it into the empty str String.
      end + "\n" #an empty line
  end
end

# DRIVER CODE BELOW: PLEASE WRITE IT #

board = BoggleBoard.new
puts board # Empty @board is drawn out by by to_s
board.shake! # @board is now filled with 16 random alphabets.
puts board # to_s draws @board data out into 4x4 boggleboard.
