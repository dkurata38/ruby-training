puts '文字列を入力してください。'
str = gets.chomp

puts '区切り文字列を入力してください。'
separate_str = gets.chomp

re = Regexp.new(separate_str + "(.*)" + separate_str)
result = re.match(str)

puts result[1]
