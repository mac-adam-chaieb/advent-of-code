input = File.open('shared/day1.txt', 'r').read 
p "The final level is #{input.count('(') - input.count(')')}."

basement_step = 0
counter = 0
input.chars.each do |c|
  basement_step += 1
  counter += c == '(' ? 1 : -1
  break if counter < 0
end
p "Santa enters the basement after #{basement_step} steps."
