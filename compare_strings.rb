
#module CompareStrings
    def is_a_within_b(a, b, exact_match=true)
        match=[]
        a_index = 0
        a_char = a[a_index]
        b_index = 0
        while b_index < b.length
            if exact_match && a_char == b[b_index]
                match << a_char
                a_index += 1
                a_char = a[a_index]
                return true if match.length == a.length
            elsif !exact_match && a_char.downcase == b[b_index].downcase
                match << a_char
                a_index += 1
                a_char = a[a_index]
                return true if match.length == a.length
            elsif match.length > 0
                match = []
                a_index = 0
                a_char = a[a_index]

                if exact_match && a_char == b[b_index]
                    match << a_char
                    a_index += 1
                    a_char = a[a_index]
                    return true if match.length == a.length
                elsif !exact_match && a_char.downcase == b[b_index].downcase
                    match << a_char
                    a_index += 1
                    a_char = a[a_index]
                    return true if match.length == a.length
                end

            end
            b_index += 1
        end
        false
    end
#end
