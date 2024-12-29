require './compare_strings'

# Test 1
string1 = "The"
string2_match = "welcome to The jungle"
exact_match = true
if is_a_within_b(string1, string2_match, exact_match)
    puts "matching string: passed"
else
    puts "matching string: failed"
end

# Test 2
string1 = "The"
string2_nomatch = "We've got fun and games"
exact_match = true
if is_a_within_b(string1, string2_nomatch, exact_match)
    puts "non matching string: failed "
else
    puts "non matching string: passed"
end

# Test 3
string1 = "The"
string2_match = "welcome to TThe jungle"
exact_match = true
if is_a_within_b(string1, string2_match, exact_match)
    puts "matching string next char edgecase: passed"
else
    puts "matching string next char edgecase: failed"
end
