require './compare_strings'


def test1_exact_match
    string1 = "The"
    string2_match = "welcome to The jungle"
    exact_match = true
    if CompareStrings.is_a_within_b(string1, string2_match, exact_match)
        puts "passed: matching string"
    else
        puts "failed: matching string"
    end
end

def test2_exact_match
    string1 = "The"
    string2_nomatch = "We've got fun and games"
    exact_match = true
    if CompareStrings.is_a_within_b(string1, string2_nomatch, exact_match)
        puts "failed: non matching string"
    else
        puts "passed: non matching string"
    end
end

def test3_exact_match
    string1 = "The"
    string2_match = "welcome to TThe jungle"
    exact_match = true
    if CompareStrings.is_a_within_b(string1, string2_match, exact_match)
        puts "passed: matching string next char edgecase"
    else
        puts "failed: matching string next char edgecase"
    end
end

def test4_exact_match
    # can work for sequences
    s1 = [1,'a',3]
    s2_matching = [1,3,'f',5,1,'a',3,'d',6,7,8,'h']
    exact_match = true
    if CompareStrings.is_a_within_b(s1, s2_matching, exact_match)
        puts "passed: matching sequences"
    else
        puts "failed: matching sequences"
    end
end

def test5_exact_match
    # can work for sequences
    s1 = [1,'a',3]
    s2_non_matching = [1,3,'f',5,1,'a',43,'d',6,7,8,'h']
    exact_match = true
    if CompareStrings.is_a_within_b(s1, s2_non_matching, exact_match)
        puts "failed: NON matching sequences"
    else
        puts "passed: NON matching sequences"
    end
end

def test6_exact_match
    # can work for sequences
    s1 = [1,'a',3]
    s2_matching = [1,3,'f',5,1,1,'a',3,'d',6,7,8,'h']
    exact_match = true
    if CompareStrings.is_a_within_b(s1, s2_matching, exact_match)
        puts "passed: matching sequences next char edgecase"
    else
        puts "failed: matching sequences next char edgecase"
    end
end

def test7_exact_match
    string1 = "wel"
    string2_match = "welcome to The jungle"
    exact_match = true
    if CompareStrings.is_a_within_b(string1, string2_match, exact_match)
        puts "passed: matching string"
    else
        puts "failed: matching string"
    end
end

def test8_exact_match
    string1 = "ngle"
    string2_match = "welcome to The jungle"
    exact_match = true
    if CompareStrings.is_a_within_b(string1, string2_match, exact_match)
        puts "passed: matching string"
    else
        puts "failed: matching string"
    end
end

def test1_not_exact_match
    string1 = "The"
    string2_match = "welcome to The jungle"
    exact_match = false
    if CompareStrings.is_a_within_b(string1, string2_match, exact_match)
        puts "passed: matching string"
    else
        puts "failed: matching string"
    end
end

def test2_not_exact_match
    string1 = "The"
    string2_nomatch = "We've got fun and games"
    exact_match = false
    if CompareStrings.is_a_within_b(string1, string2_nomatch, exact_match)
        puts "failed: non matching string"
    else
        puts "passed: non matching string"
    end
end

def test3_not_exact_match
    string1 = "The"
    string2_match = "welcome to TThe jungle"
    exact_match = false
    if CompareStrings.is_a_within_b(string1, string2_match, exact_match)
        puts "passed: matching string next char edgecase"
    else
        puts "failed: matching string next char edgecase"
    end
end

def test4_not_exact_match
    # can work for sequences
    s1 = [1,'a',3]
    s2_matching = [1,3,'f',5,1,'a',3,'d',6,7,8,'h']
    exact_match = false
    if CompareStrings.is_a_within_b(s1, s2_matching, exact_match)
        puts "passed: matching sequences"
    else
        puts "failed: matching sequences"
    end
end

def test5_not_exact_match
    # can work for sequences
    s1 = [1,'a',3]
    s2_non_matching = [1,3,'f',5,1,'a',43,'d',6,7,8,'h']
    exact_match = false
    if CompareStrings.is_a_within_b(s1, s2_non_matching, exact_match)
        puts "failed: NON matching sequences"
    else
        puts "passed: NON matching sequences"
    end
end

def test6_not_exact_match
    # can work for sequences
    s1 = [1,'a',3]
    s2_matching = [1,3,'f',5,1,1,'a',3,'d',6,7,8,'h']
    exact_match = false
    if CompareStrings.is_a_within_b(s1, s2_matching, exact_match)
        puts "passed: matching sequences next char edgecase"
    else
        puts "failed: matching sequences next char edgecase"
    end
end

def test7_not_exact_match
    string1 = "wel"
    string2_match = "welcome to The jungle"
    exact_match = false
    if CompareStrings.is_a_within_b(string1, string2_match, exact_match)
        puts "passed: matching string"
    else
        puts "failed: matching string"
    end
end

def test8_not_exact_match
    string1 = "ngle"
    string2_match = "welcome to The jungle"
    exact_match = false
    if CompareStrings.is_a_within_b(string1, string2_match, exact_match)
        puts "passed: matching string"
    else
        puts "failed: matching string"
    end
end

def test9_not_exact_match
    # can work for sequences
    s1 = [1,'A',3]
    s2_matching = [1,3,'f',5,1,'a',3,'d',6,7,8,'h']
    exact_match = false
    if CompareStrings.is_a_within_b(s1, s2_matching, exact_match)
        puts "failed: matching sequences: defaults to exact_match true if not String"
    else
        puts "passed: matching sequences: defaults to exact_match true if not String"
    end
end

# Run tests
test1_exact_match
test2_exact_match
test3_exact_match
test4_exact_match
test5_exact_match
test6_exact_match
test7_exact_match
test8_exact_match
puts "###"
test1_not_exact_match
test2_not_exact_match
test3_not_exact_match
test4_not_exact_match
test5_not_exact_match
test6_not_exact_match
test7_not_exact_match
test8_not_exact_match
test9_not_exact_match
