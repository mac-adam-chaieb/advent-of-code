t = File.open('data/day3.txt', 'r').read.each_char
f = ->(l){l.reduce([[0,0]]) {|p,s| p.push [p[-1][0] + {'<'=>-1, '>'=>1}[s].to_i, p[-1][1] + {'^'=> 1, 'v'=> -1}[s].to_i]}.uniq}
n = f.call(t).size
m = t.with_index.partition{ |_, i| i.even? }.map { |a| f.call a.map(&:first) }.reduce(:|).size

p "Santa first delivered presents to #{n} houses!"
p "With Robo Santa, he was able to deliver presents to #{m} houses."
