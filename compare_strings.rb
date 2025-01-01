require 'byebug'

module CompareStrings
    class << self
        def is_a_within_b?(a, b, exact_match=true)
            exact_match = true unless a.is_a? String
            exact_match = true unless b.is_a? String

            a = a.downcase if a.is_a?(String) && !exact_match
            b = b.downcase if b.is_a?(String) && !exact_match

            number_matches_found = 0
            a_char = a[0]
            b_index = 0
            while b_index < b.length
                (number_matches_found, a_char) = match_character_and_increment(
                    a, b, a_char, b_index, number_matches_found
                )
                return true if number_matches_found == a.length
                b_index += 1
            end
            false
        end

        private

        def match_character_and_increment(a, b, a_char, b_index, number_matches_found)
            if a_char == b[b_index]
                return match_and_increment_string(a, a_char, number_matches_found)
            elsif number_matches_found > 0
                (number_matches_found, a_char) = reset_matchs(a)

                if a_char == b[b_index]
                    return match_and_increment_string(a, a_char, number_matches_found)
                end
            end
            return number_matches_found, a_char
        end

        def match_and_increment_string(a, a_char, number_matches_found)
            number_matches_found += 1
            a_char = a[number_matches_found]

            return number_matches_found, a_char
        end

        def reset_matchs(a)
            number_matches_found = 0
            a_index = 0
            a_char = a[a_index]
            return number_matches_found, a_char
        end
    end
end
