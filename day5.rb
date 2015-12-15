t = File.open('data/day5.txt', 'r').readlines.map(&:strip)
as,ps = ('a'..'z').to_a.zip('a'..'z').map(&:join), ['ab','cd','pq','xy']
n = t.select {|w| w.scan(/[aeiou]/).size > 2 && ps.all? {|p| !w.include? p} && as.any? {|p| w.include? p}}
m = t.select {|w| w.chars.each_cons(2).any?{|p|w.scan(p.join).size > 1} && w.chars.each_cons(3).any?{|p| p[0] == p[2]}}

p "There are #{n.size} nice strings in his text file."
p "After Santa reviews his model, there are #{m.size} nice string in his text file."
