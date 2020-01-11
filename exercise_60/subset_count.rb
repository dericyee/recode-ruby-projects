
def subset_count(n,k)

    if n == 0
        return 0
    elsif k == 0
        return 1
    elsif k == 1
        return n
    end

    return subset_count(n - 1, k - 1) + subset_count(n - 1, k)
end

p subset_count(0, 5)
# => 0
p subset_count(6, 2)
# => 15
p subset_count(6, 3)
# => 20
p subset_count(24, 4)
# => 10626