require 'date'
puts '分を入力してください。'
minute = gets.chomp.to_i

default_time = Time.local(1994, 12, 24)
result_time = default_time + minute * 60

result = result_time.strftime('%H時%M分')
puts result