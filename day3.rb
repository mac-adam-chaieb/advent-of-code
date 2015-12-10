input = File.open('data/day3.txt').read.each_char
f = ->(l){ l.reduce([[0,0]]) { |p, s| p.push [p.last[0] + {'<' => -1, '>' => 1}.fetch(s,0), p.last[1] + {'^' => 1, 'v' => -1}.fetch(s,0)] }.uniq }
first = f.call(input).size
second = input.with_index.partition{ |_, i| i.even? }.map { |a| f.call a.map(&:first) }.reduce(:+).uniq.size

p "Santa first delivered presents to #{first} houses!"
p "With Robo Santa, he was able to deliver presents to #{second} houses."
