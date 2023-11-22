unpredictable_inputs = [
  "Hello!",
  Time.now,
  rand(100),
  :GOODBYE,
  nil,
  true,
  false,
  { :city => "Chicago", :state => "IL", :zip => 60654 }
]

some_random_input = unpredictable_inputs.sample
input_class = some_random_input.class
weekday_array = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]

if input_class == String
  pp some_random_input.downcase
elsif input_class == Time
  weekday_integer = some_random_input.wday
  pp weekday_array[weekday_integer].downcase
elsif input_class == Integer
  if some_random_input.even?
    pp "#{some_random_input} is even"
  else
    pp "#{some_random_input} is odd"
  end
elsif input_class == Symbol
  pp some_random_input.downcase
elsif input_class == NilClass
  pp "no object provided"
elsif input_class == TrueClass
  pp "you may pass"
elsif input_class == FalseClass
  pp "you may not pass"
elsif input_class == Hash
  pp some_random_input.keys
end
