# -*- coding: utf-8 -*-

def f(x)
  return eval($func)
end

puts "Input f(x)"
$func = gets.chop

# Initialize frame buffer
# frame buffer x=0..79, y=0..24
frame = []
24.times do
  line = []
  line << '|'
  79.times do
    line << ' '
  end
  frame << line
end
line = ['+']
79.times do
  line << '-'
end
frame << line

# X label
frame[23][78] = 'X'

# Y label
frame[0][1] = 'Y'

# draw func
frame [0][20] = 'y'
frame [0][21] = '='
frame [0][22] = $func

# draw graph
for x in 0..79 do
  x1 = x / 79.0
  y = (f(x1) * 24.0).floor
  frame[24-y][x] = '*'
end

# printout
frame.each do |line|
  line.each do |ch|
    print ch
  end
  print "\n"
end
