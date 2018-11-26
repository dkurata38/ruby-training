puts '数値の個数を入力してください。'
num = gets.chomp.to_i

nums = []
num.times do |i|
  puts (i + 1).to_s + '個目の数値を入力してください。'
  nums[i] = gets.chomp.to_i
end

sum = 0
nums.each do |i|
  puts '入力値:' + i.to_s
  sum += i
end

puts '合計値:' + sum.to_s
