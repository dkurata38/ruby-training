puts '名字を入力してください。'
last_name = gets.chomp

puts '名前を入力してください。'
first_name = gets.chomp

result = ""
result << 'こんにちは、'
result << last_name
result << first_name
result << 'さん。今後は'
result << first_name
result << 'さんと呼んでいいですか?'
puts result