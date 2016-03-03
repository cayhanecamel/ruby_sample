puts ""
puts 'z = "hoge"'
z = "hoge"
puts ''

puts '【普通のメソッド】'
puts 'z.upcase'
puts 'z'
puts ''

puts z.upcase
puts z
puts ''

puts '【破壊的メソッド】'
puts 'puts s.upcase!'
puts 'puts s'
puts ''

puts z.upcase!
puts z
puts ''

puts '【真偽値を返すメソッド】'
puts 'z.empty?'
puts ''

puts z.empty?

