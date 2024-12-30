require 'byebug'

module CompareStrings
    class << self
        def is_a_within_b(a, b, exact_match=true)
        a_char = a[a_index]
        b_index = 0

            match=[]
            a_index = 0
            a_char = a[a_index]
            b_index = 0
            while b_index < b.length
                if exact_match
                    (match, a_index, a_char) = match_character_and_increment(a, b, a_char, a_index, b_index, match)
                elsif !exact_match
                    (match, a_index, a_char) = match_character_and_increment(a.downcase, b.downcase, a_char.downcase, a_index, b_index, match)
                end
                return true if match.length == a.length
                b_index += 1
            end
            false
        end

        private

        def match_character_and_increment(a, b, a_char, a_index, b_index, match)
            if a_char == b[b_index]
                return match_and_increment_string(a, a_char, a_index, match)
            elsif match.length > 0
                match = []
                a_index = 0
                a_char = a[a_index]

                if a_char == b[b_index]
                    return match_and_increment_string(a, a_char, a_index, match)
                end
            end
            return match, a_index, a_char
        end

        def match_and_increment_string(a, a_char, a_index, match)
            match << a_char
            a_index += 1
            a_char = a[a_index]
            return match, a_index, a_char
        end
    end
end
