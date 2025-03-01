# We want to return a hashMap where
# Key: Word | Value: Count
# word -> wordCount

def substrings(word, arr)
    result = Hash.new(0)
    word = word.downcase

    arr.each do |sub|
        substring_down = sub.downcase # Ensure dictionary words are case insensitive
        matches = word.scan(/#{Regexp.escape(substring_down)}/).size # Count occurrences
        result[substring_down] += matches if matches > 0
    end

    return result
end

dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]

puts substrings("below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)
