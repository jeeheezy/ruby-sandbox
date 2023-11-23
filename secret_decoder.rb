secret = [
  "3 h1v2 1 s2cr2t t4 sh1r2",
  "3s th3s s2c5r2 2n45gh f4r my P1SSW4RD?",
  "w2 sh45ld b2 m4r2 cl2v2r"
].sample
pp secret

encoder = {
  "1" => "a",
  "2" => "e",
  "3" => "i",
  "4" => "o",
  "5" => "u"
}

letters_to_replace = encoder.keys
letters_to_replace.each { |letter|
  secret.gsub!(letter, encoder[letter].to_s)
}
pp secret.capitalize

# this method works but doesn't feel like it's the most efficient, also doesn't account for when letters might need to be uppercase (although the given tests don't seem to care about that)
