# 数値オブジェクト

# 整数型
x = 100 # 100_000_000 アンダーバーが無視されるので大きい数には区切りを入れて可視性をUPするのもOK
puts "x = " + x.to_s

# 浮動小数点型
y = 20.5
puts "y = " + y.to_s

# 分数型
z = 1/3r # Rational(1, 3)
puts "z = " + z.to_s

# + - * / % **

# 割った余りを出す：1
puts "x % 3 = " + ( x % 3 ).to_s
puts

# べき乗：1000
puts "【xの3乗】"
puts "x ** 3 = " + ( x ** 3 ).to_s
puts

# 分数の乗算
puts "【分数の乗算】"
puts "z * 2 = " + ( z * 2 ).to_s
puts

# 自己代入
puts "【自己代入】"
puts "x += 5 : " + ( x += 5 ).to_s
puts

# 四捨五入
puts "【四捨五入】"
puts "y.round = " + ( y.round ).to_s
puts
