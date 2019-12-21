# Write a program, which would ask for number inputs. As long as numbers are inputted, it would continue asking for more numbers When “done” is inputted instead of a number, print the following:

question = "Do you have another number?"
answerArr = []


def prime_numbers(n)
newestArr=[]

n.each do |x|
    prime_test=[]
    for i in 1..x
        if x%i == 0
            prime_test = prime_test.push(i)
        end
    end
    if prime_test.include?(x) && prime_test.include?(1) && prime_test.length==2
        newestArr=newestArr.push(x)
    end
end

return newestArr
end

loop do
    puts question
    answer = gets.chomp.downcase
    answerArr.push(answer.to_i)
    p answerArr

    if answer == "done"
        answerArr.pop
        puts "The highest number is: #{answerArr.max}"
        puts "The lowest number is: #{answerArr.min} "
        puts "The sum of all the numbers are: #{answerArr.sum}"
        puts "You have inputted #{answerArr.count} numbers"
        puts "The average of the numbers are: #{answerArr.sum / answerArr.count}"
        puts "These are all the even numbers: #{answerArr.select{|n|n.even?}.join(', ')}"
        # or u can use (&:even?)
        puts "These are all the numbers: #{answerArr.join(', ')}"
        puts "There are some prime numbers: #{prime_numbers(answerArr)}"
    break
    end
end

