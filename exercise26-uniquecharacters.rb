puts "type whatever you want"
 sentence = gets.chomp

def unique_char(sentence)

    #Converting the spaces into "spaces".
    sentenceSplit = sentence.downcase.split('')
        for i in 0..sentenceSplit.count do
            if sentenceSplit.include?(" ")
        sentenceSplit[sentenceSplit.index(" ")]="(space)"
            end
        end
    
        newHash = Hash.new(0)
        sentenceSplit.each {|i| newHash[i] += 1 }
        # or sentenceSplit.each {|i| newHash[i] = sentenceSplit.count(i) }
        #note to self: in this case, i isn't iterating as an index number like in an array . In this case, i is the value itself! So doing this creates a new key in newHash everytime in loops through, and the value = 1 as soon as it adds a new key, and +1 if the key iterates through again.
     
         newHash.sort_by{|k,v| v}.reverse.each{|k,v| p "#{k} - #{v}"}
        #returning the Hash in descending order for bonus points!
    end

unique_char(sentence)
