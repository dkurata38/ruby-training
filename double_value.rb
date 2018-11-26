puts '数値を入力してください。'
num = gets.chomp.to_i

double_value = num * 2
result = ""
result << '2倍の結果は'
result << double_value.to_s
result << 'です。'

puts result
