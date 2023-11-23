inputs = [
  ["9", "5", "4"],
  ["20", "40", "60"],
  ["1", "3", "19"]
]
numbers = inputs.sample
pp numbers

sum = 0
numbers.each { |number|
  integer = number.to_i
  if integer.odd? == true
    sum += integer
  end
}
pp "#{sum}"
