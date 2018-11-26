puts '開始値を入力してください。'
start_num = gets.chomp.to_i

puts '終了値を入力してください。'
end_num = gets.chomp.to_i

add_num = start_num
sum_while = 0
while add_num <= end_num
  sum_while += add_num
  add_num += 1
end

sum_forin = 0
for x in (start_num.. end_num) do
  sum_forin += x
end

sum_iterator = 0
(start_num..end_num).each do |i|
  sum_iterator += i
end

puts 'whileの結果:' + sum_while.to_s
puts 'forinの結果:' + sum_forin.to_s
puts 'iteratorの結果:' + sum_iterator.to_s
