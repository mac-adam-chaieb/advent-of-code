t = File.open('data/day1.txt', 'r').read.each_char
n = t.with_index.reduce([[0,1]]) {|a,c| a.push [c[1], a[-1][1] + (c[0]=='(' ? 1 : -1)]}.detect {|a| a[-1] < 0}[0]

p "The final level is #{t.count('(') - t.count(')')}."
p "Santa enters the basement after #{n} steps."
