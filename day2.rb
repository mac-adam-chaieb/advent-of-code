paper, ribbon = File.open('shared/day2.txt', 'r').readlines.inject([0,0]) do |a, l|
  s, t, u = l.strip.split('x').map(&:to_i).sort
  [a[0] + 2 * (s*t + t*u + s*u) + [s*t, t*u, s*u].min, a[1] + (s*t*u) + 2*(s+t)]
end

p "The elves are going to need #{paper} square feet of wrapping paper this Christmas!"
p "And #{ribbon} feet of ribbon."
