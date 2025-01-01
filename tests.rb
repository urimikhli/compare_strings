require './compare_strings'

def test1_exact_match
    string1 = "The"
    string2_match = "welcome to The jungle"
    exact_match = true
    if CompareStrings.is_a_within_b?(string1, string2_match, exact_match)
        puts " 1: passed: matching string"
    else
        puts "1: failed: matching string"
    end
end

def test2_exact_match
    string1 = "The"
    string2_nomatch = "We've got fun and games"
    exact_match = true
    if CompareStrings.is_a_within_b?(string1, string2_nomatch, exact_match)
        puts "2: failed: non matching string"
    else
        puts " 2: passed: non matching string"
    end
end

def test3_exact_match
    string1 = "The"
    string2_match = "welcome to TThe jungle"
    exact_match = true
    if CompareStrings.is_a_within_b?(string1, string2_match, exact_match)
        puts " 3: passed: matching string next char edgecase"
    else
        puts "3: failed: matching string next char edgecase"
    end
end

def test4_exact_match
    # can work for sequences
    s1 = [1,'a',3]
    s2_matching = [1,3,'f',5,1,'a',3,'d',6,7,8,'h']
    exact_match = true
    if CompareStrings.is_a_within_b?(s1, s2_matching, exact_match)
        puts " 4: passed: matching sequences"
    else
        puts "4: failed: matching sequences"
    end
end

def test5_exact_match
    # can work for sequences
    s1 = [1,'a',3]
    s2_non_matching = [1,3,'f',5,1,'a',43,'d',6,7,8,'h']
    exact_match = true
    if CompareStrings.is_a_within_b?(s1, s2_non_matching, exact_match)
        puts "5: failed: NON matching sequences"
    else
        puts " 5: passed: NON matching sequences"
    end
end

def test6_exact_match
    # can work for sequences
    s1 = [1,'a',3]
    s2_matching = [1,3,'f',5,1,1,'a',3,'d',6,7,8,'h']
    exact_match = true
    if CompareStrings.is_a_within_b?(s1, s2_matching, exact_match)
        puts " 6: passed: matching sequences next char edgecase"
    else
        puts "6: failed: matching sequences next char edgecase"
    end
end

def test7_exact_match
    string1 = "wel"
    string2_match = "welcome to The jungle"
    exact_match = true
    if CompareStrings.is_a_within_b?(string1, string2_match, exact_match)
        puts " 7: passed: matching start of string"
    else
        puts "7: failed: matching start of string"
    end
end

def test8_exact_match
    string1 = "ngle"
    string2_match = "welcome to The jungle"
    exact_match = true
    if CompareStrings.is_a_within_b?(string1, string2_match, exact_match)
        puts " 8: passed: matching end of string"
    else
        puts "9: failed: matching end of string"
    end
end

def test1_not_exact_match
    string1 = "The"
    string2_match = "welcome to the jungle"
    exact_match = false
    if CompareStrings.is_a_within_b?(string1, string2_match, exact_match)
        puts " 1: passed: matching string despite caps difference"
    else
        puts "1: failed: matching string despite caps difference"
    end
end

def test2_not_exact_match
    string1 = "The"
    string2_nomatch = "We've got fun and games"
    exact_match = false
    if CompareStrings.is_a_within_b?(string1, string2_nomatch, exact_match)
        puts "2: failed: non matching string"
    else
        puts " 2: passed: non matching string"
    end
end

def test3_not_exact_match
    string1 = "The"
    string2_match = "welcome to Tthe jungle"
    exact_match = false
    if CompareStrings.is_a_within_b?(string1, string2_match, exact_match)
        puts " 3: passed: matching string next char edgecase despite caps difference"
    else
        puts "3: failed: matching string next char edgecase despite caps difference"
    end
end

def test4_not_exact_match
    # can work for sequences
    s1 = [1,'a',3]
    s2_matching = [1,3,'f',5,1,'a',3,'d',6,7,8,'h']
    exact_match = false
    if CompareStrings.is_a_within_b?(s1, s2_matching, exact_match)
        puts " 4: passed: matching sequences"
    else
        puts "4: failed: matching sequences"
    end
end

def test5_not_exact_match
    # can work for sequences
    s1 = [1,'a',3]
    s2_non_matching = [1,3,'f',5,1,'a',43,'d',6,7,8,'h']
    exact_match = false
    if CompareStrings.is_a_within_b?(s1, s2_non_matching, exact_match)
        puts "5: failed: NON matching sequences"
    else
        puts " 5: passed: NON matching sequences"
    end
end

def test6_not_exact_match
    # can work for sequences
    s1 = [1,'a',3]
    s2_matching = [1,3,'f',5,1,1,'a',3,'d',6,7,8,'h']
    exact_match = false
    if CompareStrings.is_a_within_b?(s1, s2_matching, exact_match)
        puts " 6: passed: matching sequences next char edgecase"
    else
        puts "6: failed: matching sequences next char edgecase"
    end
end

def test7_not_exact_match
    string1 = "Wel"
    string2_match = "welcome to The jungle"
    exact_match = false
    if CompareStrings.is_a_within_b?(string1, string2_match, exact_match)
        puts " 7: passed: matching string"
    else
        puts "7: failed: matching string"
    end
end

def test8_not_exact_match
    string1 = "NGLE"
    string2_match = "welcome to The jungle"
    exact_match = false
    if CompareStrings.is_a_within_b?(string1, string2_match, exact_match)
        puts " 8: passed: matching string"
    else
        puts "8: failed: matching string"
    end
end

def test9_not_exact_match
    # can work for sequences
    s1 = [1,'A',3]
    s2_matching = [1,3,'f',5,1,'a',3,'d',6,7,8,'h']
    exact_match = false
    if CompareStrings.is_a_within_b?(s1, s2_matching, exact_match)
        puts "9: failed: matching sequences: defaults to exact_match true if not String"
    else
        puts " 9: passed: matching sequences: defaults to exact_match true if not String"
    end
end

def test1_empty_and_nil
    string1 = nil
    string2_match = "welcome to The jungle"
    exact_match = true
    if CompareStrings.is_a_within_b?(string1, string2_match, exact_match)
        puts "1: failed: null 'a' string"
    else
        puts " 1: passed: null 'a' string"
    end
end

def test2_empty_and_nil
    string1 = ""
    string2_match = "welcome to The jungle"
    exact_match = true
    if CompareStrings.is_a_within_b?(string1, string2_match, exact_match)
        puts " 2: passed: empty 'a' string"
    else
        puts "2: failed: empty 'a' string"
    end
end

def test3_empty_and_nil
    string1 = "the"
    string2_match = nil
    exact_match = true
    if CompareStrings.is_a_within_b?(string1, string2_match, exact_match)
        puts "3: failed: null 'b' string"
    else
        puts " 3: passed: null 'b' string"
    end
end

def test4_empty_and_nil
    string1 = "the"
    string2_match = ""
    exact_match = true
    if CompareStrings.is_a_within_b?(string1, string2_match, exact_match)
        puts "4: failed: empty 'b' string"
    else
        puts " 4: passed: empty 'b' string"
    end
end

# Run tests
puts "### exact_match = true ####"
test1_exact_match
test2_exact_match
test3_exact_match
test4_exact_match
test5_exact_match
test6_exact_match
test7_exact_match
test8_exact_match
puts "### exact_match = false ####"
test1_not_exact_match
test2_not_exact_match
test3_not_exact_match
test4_not_exact_match
test5_not_exact_match
test6_not_exact_match
test7_not_exact_match
test8_not_exact_match
test9_not_exact_match
puts "##### empty string and nil guardrails"
test1_empty_and_nil
test2_empty_and_nil
test3_empty_and_nil
test4_empty_and_nil
