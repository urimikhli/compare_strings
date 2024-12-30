
#module CompareStrings
    require 'byebug'

    def is_a_within_b(a, b, exact_match=true)
        match=[]
        a_index = 0
        a_char = a[a_index]
        b_index = 0
        while b_index < b.length
            if exact_match
                (match, a_index, a_char) = match_character_and_increment(a, b, a_char, a_index, b_index, match)
                return true if match.length == a.length
            elsif !exact_match
                (match, a_index, a_char) = match_character_and_increment(a.downcase, b.downcase, a_char.downcase, a_index, b_index, match)
                return true if match.length == a.length
            end
            b_index += 1
        end
        false
    end

    def match_character_and_increment(a, b, a_char, a_index, b_index, match)
        if a_char == b[b_index]
            match << a_char
            a_index += 1
            a_char = a[a_index]
        elsif match.length > 0
            match = []
            a_index = 0
            a_char = a[a_index]

            if a_char == b[b_index]
                match << a_char
                a_index += 1
                a_char = a[a_index]
            end
        end
        return match, a_index, a_char
    end

#end
