# 文字列オブジェクト
puts ''
puts 'name = "hoge"'
name = "hoge"
puts ''

puts '【ダブルクォーテーション】'
puts 'double = "hel\tlo\n world, #{name}"'
double = "hel\tlo\n world, #{name}" # 変数展開、特殊文字（\n \t）
puts double
puts ''


puts '【シングルクォーテーション】'
puts 'single = \'hel\tlo\n world, #{name}\'' 
single = 'hel\tlo\n world, #{name}' 
puts single
puts ''

puts '【連結】'
puts 'hello world + hoge'
puts "hello world" + " hoge"
puts ''

puts '【繰り返し】'
puts '"hello" * 5 '
puts "hello " * 5


