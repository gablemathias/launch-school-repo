# Intro to PEDAC :)


=begin
I have interviewed five software engineering candidates over the past two weeks,
including folks with grad degrees in computer science/ex-FAANG with 7+ years of
experience. All five were jointly rejected by myself and a co-interviewer either
because the candidates jumped straight into implementation and ended up with bugs
during testing or unhandled edge cases, and/or their oral-written communication
was poor.

So, for those folks who are 'PEDACing' for the first few times:
1) Train your problem solving muscles to start with PEDAC by default (or some
equivalent thereof);
2) Get comfortable talking through problems out loud, not just typing silently.

Can't stress enough that PEDAC isn't an arbitrary heuristic meant for getting through 
the curriculum or 109/129 oral assessments. PEDAC works, especially under pressure.

- Sam Swire (Check)
=end

# 2

=begin
What is PEDAC?
- disciplined, structural approach to solving programming problems 
- First process the problem (PEDA), then code with intent (C)

Benefits:
- Will save us time in the long run
- Will help us avoid issues that often arise when we encounter a problem and try and jump straight to coding (i.e. hack and slash coding)
- Failure to meet requirements of the problem 
- Failure to handle edge cases appropriately
- Resulting solution is hard to read or maintain
=end

# 3

=begin
Write a method that takes an array of consecutive letters as input and returns the missing letter.
=end

# p determine_missing_letter(['a','b','c','d','f']) == 'E' 
# p determine_missing_letter(['o','q','r','s']) == 'P'
# p determine_missing_letter(['H','J','K','L']) == 'i'
# p determine_missing_letter([]) == []


-----

# Intro to PEDAC :)

=begin
Write a method that takes an array of consecutive letters as input and returns the missing letter.
=end

# p determine_missing_letter(['a','b','c','d','f']) == 'E' 
# p determine_missing_letter(['o','q','r','s']) == 'P'
# p determine_missing_letter(['H','J','K','L']) == 'i'
# p determine_missing_letter([]) == []

=begin
---------------- Problem
Given an array that contains single letter elements in alphabetical sequence, return the letter that is missing from the sequence

Input: Array of strings (letters)

Output: Missing letter (string)

Rules:
- Given array of lowercase letters, expected return is an uppercase letter/string
- Given array of uppercase letters, expected return is an lowercase letter/string
- Given an empty array, we must return an empty array

---------------- Modelling
['a','b','c','d','f'] ==> given array
['a','b','c','d','e','f'] ==> range array

---------------- Data Structures
A range to compare our argument against
  - The complete range of letters, containing the missing one
    - Starting at the first letter in the given array, ending with the last letter in the given array

---------------- Scratchpad
GREAT IDEA!
- methods that might be useful....

---------------- Algorithm
Return an empty array if the given array is empty

Create a range of letters starting at the first letter in the given array, ending with the last letter in the given array
  - Convert this range into an array

Compare the range array against the given array and return an array with elements in the range array that are not in the given array
  - 'subtract' the given array from the range array
    - This returns an array with a single element that is the missing letter from the given array

Return the single element in the array resulting from the array comparison
  - Swap the case of the letter before we return it
=end

def determine_missing_letter(arr)
  return arr if arr.empty?
  alpha = (arr[0]..arr[-1]).to_a
  missing_letter_array = alpha - arr
  missing_letter_array[0].swapcase
end

p determine_missing_letter(['a','b','c','d','f']) == 'E' 
p determine_missing_letter(['o','q','r','s']) == 'P'
p determine_missing_letter(['H','J','K','L']) == 'i'
p determine_missing_letter([]) == []