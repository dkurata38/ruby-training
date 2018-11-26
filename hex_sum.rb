puts '1つ目の16進数を入力してください。'
hex_num1 = gets.chomp
puts '2つ目の16進数を入力してください。'
hex_num2 = gets.chomp

num1 = hex_num1.hex
num2 = hex_num2.hex

sum = num1 + num2
puts sum
