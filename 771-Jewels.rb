def num_jewels_in_stones(j, s)
    hash = Hash.new(0)
    s.chars.each do |ch|
        hash[ch] +=1
    end
    count = 0
    j.chars.each do |jewel|
        count += hash[jewel]
    end
    count
end