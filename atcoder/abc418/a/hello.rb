n = gets.to_i
s = gets.chomp

if n < 3
  puts "No"
elsif s.end_with?("tea")
  puts "Yes"
else
  puts "No"
end
