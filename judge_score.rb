PASS_SCORE = 80

puts '得点を入力してください'
score = gets.chomp.to_i

result = nil;
if score >= PASS_SCORE then
  result = '合格'
else
  result = '不合格'
end
puts result
