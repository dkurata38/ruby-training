words = []
index = 0
while true do
  puts "任意の文字列を入力するか\"RESULT\"と入力してください。"
  input = gets.chomp
  if input == 'RESULT'
    break
  end
  words[index] = input
  index += 1
end

max_length_word = words.max_by {|word| word.length}
max_length = max_length_word.length
result = "";
index = 0
words.each do |word|
  if index > 0 then
    result << "\n"
  end
  word_length = word.length
  space_num = max_length - word_length
  space_num.times do
    result << "\s"
  end
  result << word
  index += 1
end
puts result
