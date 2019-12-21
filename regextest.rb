# # def danish(string)
# #     if string.scan(/ apple|blueberry|cherry/)[0]!=nil
# #     arrayOfFruits = string.scan(/apple|blueberry|cherry/)
# #     string[arrayOfFruits[0]]="danish"
# #     return string
# #     else 
# #         return string
# #     end
# # end


# # p danish("An apple a day keeps the doctor away")
# # p danish("My favourite is blueberry pie")
# # p danish("The cherry of my eye")
# # p danish("apple. cherry. blueberry.")
# # p danish("I love pineapple")

# def validate_username?(string)
#    #  regex=/(^[a-z]([^\W]){2,20})|(\A\w)\1{2,}/i
#    #  newArr = string.scan(regex).flatten
#    #  newArr.pop
#    # p newArr

#    #   if newArr  == [string] 
#    #      return true
#    #   else 
#    #      return false
#    #   end

#    # def validate_username?(username)
#       # reject when username contains special characters \W
#       # reject when a username is just one character repeating (\A\w)\1{2,}
#       # reject when username does not start with alphabet \A[^A-Z]
#       if string.match(/([a-z](\W){2,20})|(\A\w)\1{2,}/i)
#           return false
#       end
#       return true
# end


# p validate_username?("ironman2000")
# p validate_username?("PikapikaPii")
# p validate_username?("QwertyMaster9876")
# p validate_username?("jay")
# p validate_username?("XxaJchampionJ99axX")
# p validate_username?("cryptoKING")
# p validate_username?("RM5perpost")
# p validate_username?("SYF1coder")
# p validate_username?("3000lovesforyou")
# p validate_username?("Bulb@84")
# p validate_username?("grandmasterthebestchampionever80000")
# p validate_username?("hi")
# p validate_username?("a")
# p validate_username?("u$3r")
# p validate_username?("cCc")
# p validate_username?("aaa")
# p validate_username?("zzZZZZZ")

time = [123,123,4324,2323,112,43434]
puts time.each{|x|x}