puts '1より大きい値を入力してください。'
str_num = gets.chomp

if str_num == nil || str_num == '' then
  puts '値を入力しください。'
end

num = str_num.to_i
if num < 2
  puts '1より大きい値を入力してください。'
end

divisor_num = 0
(2..num).each do |x|
  if num % x == 0 then
    divisor_num += 1
  end
end


if divisor_num == 1 then
  puts str_num + 'は' + '素数です。'
else
  puts str_num + 'は素数ではありません。'
end
