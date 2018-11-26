require 'date'

puts '日数を入力してください。'
day = gets.chomp.to_i

date = Date.new(2014, 1, 1)
after_date = date + day

puts after_date.strftime('%Y年%m月%d日')