n = File.open('data/day6.txt', 'r').readlines.each_with_object([0].cycle(1000000).each_slice(1000).to_a) do |l,g|
  a,b,c,d = l.scan(/\d+/).map &:to_i
  p,q = l.gsub('on', '1').gsub('off', '0').split[0..1]
  g[b..d].each{|l| l[a..c]={'toggle'=>->(l,_){l.map{|x| x.to_i^1}}}.fetch(p,->(n,s){[s.to_i]*n.size}).call(l[a..c], q)}
end.to_a.flatten.count(1)
p "There are #{n} lights on!"
