puts '文字列を入力してください。'
str = gets.chomp

alpha = false
str.each_char { |chr|
  if chr =~ /[a-z]/
    alpha = true
  end
}
result = nil
if alpha then
  result = '半角英小文字が含まれます。'
else
  result = '半角英小文字は含まれません。'
end

puts result
