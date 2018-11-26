puts '文字列を入力してください。'
str = gets.chomp

words =str.split('_')
words.each do |word|
  puts '+' + word + '+'
end
