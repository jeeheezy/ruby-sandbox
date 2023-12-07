secret = [
  "I have a secret to share",
  "Is this secure enough for my PASSWORD?",
  "we should be more clever"
].sample
pp secret

encoder = {
  "a" => 1,
  "A" => 1,
  "e" => 2,
  "E" => 2,
  "i" => 3,
  "I" => 3,
  "o" => 4,
  "O" => 4,
  "u" => 5,
  "U" => 5
}
# prob a better way of approaching this hash for upper and lower case without putting two entries per letter but couldn't figure out a better way since changing secret with downcase or capitalize changes entire string and doesn't retain their original casing
# actually prob could use swapcase here and just define the lowercase in hash to same effect

letters_to_replace = encoder.keys
letters_to_replace.each { |letter|
  secret.gsub!(letter, encoder[letter].to_s)
}
pp secret
