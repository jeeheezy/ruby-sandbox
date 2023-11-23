strings = [
  "here 12 plus 25",
  "puzzle number 04 ",
  " "
]
string = strings.sample
pp string

letters = string.gsub(/[^a-z]/i, "")
letters_count = letters.length
pp "Number of letters in the string is: #{letters_count}"

spaces = string.gsub(/[^\s+]/, "")
spaces_count = spaces.length
pp "Number of spaces in the string is: #{spaces_count}"

numbers = string.gsub(/[^0-9]/, "")
numbers_count = numbers.length
pp "Number of digits in the string is: #{numbers_count}"
