require 'byebug'

module CompareStrings
    class << self
        def is_a_within_b?(a, b, exact_match=true)
            return false if a.nil?
            return true if a.empty?
            return false if b.nil?
            return false if b.empty?

            # only strings are allowed non exact matching
            exact_match = true unless a.is_a? String
            exact_match = true unless b.is_a? String

            # non exact match downcases strings
            a = a.downcase if a.is_a?(String) && !exact_match
            b = b.downcase if b.is_a?(String) && !exact_match

            number_matches_found = 0
            b_index = 0
            while b_index < b.length
                number_matches_found = match_character( a, b, b_index, number_matches_found )
                return true if number_matches_found == a.length
                b_index += 1
            end
            false
        end

        private

        def match_character(a, b, b_index, number_matches_found)
            if a[number_matches_found] == b[b_index]
                return number_matches_found += 1
            elsif number_matches_found > 0 # a match was found, but the next char failed to match 
                number_matches_found = 0   
                if a[0] == b[b_index]
                    return number_matches_found += 1
                end
            end
            return number_matches_found
        end

    end
end
