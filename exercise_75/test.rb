
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
  def shake!
    @board = DICE.shuffle.map do |die_arr| 
  die_arr.sample
    # die_arr
      end.each_slice(4).to_a
    # DICE
  end
#   array = ("A".."Z").to_a
#   p array
  p shake!