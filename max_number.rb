puts '数値の個数を入力してください。'
num = gets.chomp.to_i

nums = []
num.times do |i|
  puts (i + 1).to_s + '番目の数値を入力してください。'
  nums[i] = gets.chomp.to_i
end

max_num = nums.max

result = ''
result << nums.join("、")
result << 'の最大値は'
result << max_num.to_s
result << 'です。'

puts result
