require './compare_strings'

# Test 1
string1 = "The"
string2_match = "welcome to The jungle"
exact_match = true
if is_a_within_b(string1, string2_match, exact_match)
    puts "passed: matching string"
else
    puts "failed: matching string"
end

# Test 2
string1 = "The"
string2_nomatch = "We've got fun and games"
exact_match = true
if is_a_within_b(string1, string2_nomatch, exact_match)
    puts "failed: non matching string"
else
    puts "passed: non matching string"
end

# Test 3
string1 = "The"
string2_match = "welcome to TThe jungle"
exact_match = true
if is_a_within_b(string1, string2_match, exact_match)
    puts "passed: matching string next char edgecase"
else
    puts "failed: matching string next char edgecase"
end

# Test 4 
# can work for sequences
s1 = [1,'a',3]
s2_matching = [1,3,'f',5,1,'a',3,'d',6,7,8,'h']
exact_match = true
if is_a_within_b(s1, s2_matching, exact_match)
    puts "passed: matching sequences"
else
    puts "failed: matching sequences"
end

# Test 5 
# can work for sequences
s1 = [1,'a',3]
s2_non_matching = [1,3,'f',5,1,'a',43,'d',6,7,8,'h']
exact_match = true
if is_a_within_b(s1, s2_non_matching, exact_match)
    puts "failed: NON matching sequences"
else
    puts "passed: NON matching sequences"
end

# Test 6
# can work for sequences
s1 = [1,'a',3]
s2_matching = [1,3,'f',5,1,1,'a',3,'d',6,7,8,'h']
exact_match = true
if is_a_within_b(s1, s2_matching, exact_match)
    puts "passed: matching sequences next char edgecase"
else
    puts "failed: matching sequences next char edgecase"
end

# Test 7
string1 = "wel"
string2_match = "welcome to The jungle"
exact_match = true
if is_a_within_b(string1, string2_match, exact_match)
    puts "passed: matching string"
else
    puts "failed: matching string"
end

# Test 8
string1 = "ngle"
string2_match = "welcome to The jungle"
exact_match = true
if is_a_within_b(string1, string2_match, exact_match)
    puts "passed: matching string"
else
    puts "failed: matching string"
end
