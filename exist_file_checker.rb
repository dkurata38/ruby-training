puts 'パスを入力してください。'
path = gets.chomp

if File.exists?(path) then
	puts '存在します'
else
	puts '存在しません'
end