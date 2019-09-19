# 3.times do
# puts "I still run."
# end

# count = 0
# n = 3
# loop do 
#   break if count >= n
#   puts "I run run run"
# count += 1
# end

counter = 0
until counter == 20
  counter += 1
  puts "The current number is " + counter.to_s
end