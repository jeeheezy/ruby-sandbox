sentences = [
  "the dog, the cat, the zebra, the giraffe",
  "the, the code, and the developer",
  "then the- their"
]
sentence = sentences.sample

modified_sentence = sentence.gsub(/[^a-z0-9\s]/i, "")
pp modified_sentence

count = 0
word_array = modified_sentence.split
word_array.each { |word|
  if word == "the"
    count += 1
  end
}

pp "'the' appeared #{count} times"
