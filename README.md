# compare_strings

`is_a_with_b?` checks if string `a` exists within string `b` using only basic array methods

This is meant for checking strings, but will work for comparing any array sequence (a)
with another array (b)

`exact_match = false` calls `downcase` on the string so it will match same word, but different capitlization. If the array is not a string it defaults to exact_match

usage

```
require './compare_strings'

a = "The"
b = "welcome to the jungle"
exact_match = false # optional defaults to true
CompareStrings.is_a_within_b?(a, b, exact_match)
or
CompareStrings.is_a_within_b?(a, b)
```

The result is a `boolean` value of either `true` or `false`

### It can also compare sequences

for sequences the `exact_match` value is always true
so setting `exact_match = false` will not take effect

```
require './compare_strings'

a = [1,2,45,2,2]
b = [3,5,7,3,1,2,45,2,2,6,9,7]
CompareStrings.is_a_within_b?(a, b)
```
