def recursive_tower_of_hanoi(n,a,c,b)

    #when n == 1, its the lowest biggest disc. then the lowest disc goes to c.
    # Shift last disk from 'A' to 'C'.
    if n == 1
        puts "Move #{n} from #{a} -> #{c}" 
        return
    end
    #start with this:
    #n-1 discs (all discs except the lowest disc) from a goes to b with c standing as the extra tower.
    # Shift 'n-1' disks from 'A' to 'B'.
    recursive_tower_of_hanoi(n-1,a,b,c)
        puts "Move #{n} from #{a} -> #{c}" 
    
    #then here, move everything from b to c, with a as extra tower.
    # Shift 'n-1' disks from 'B' to 'C'.
    recursive_tower_of_hanoi(n-1,b,c,a)
end

recursive_tower_of_hanoi(4,"A","C","B")

#Couldn't complete it.
# def iterative_tower_of_hanoi

#     a = [7,6,5,4,3,2,1]
#     b = []
#     c = []
#     n = a.count
#     total_moves = 2**n -1

#     i = 1
#     while i <= n
#         if i%3 == 1
#             c.push(a.pop)
#         elsif i%3 == 2
#             b.push(a.pop)
#         elsif i%3 == 0
#             c.push(b.pop)
#     end
#         i+=1
     
#     end
#     p a
#     p b
#     p c
# end
# iterative_tower_of_hanoi



