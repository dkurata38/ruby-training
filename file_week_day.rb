require 'date'

puts 'パスを入力してください。'
path = gets.chomp

stat = File.stat(path)
created_time = stat.ctime

puts '作成日は' + created_time.strftime('%Y年%m月%d日(%a)')
