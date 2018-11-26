puts '月を入力してください。'
month = gets.chomp

season = nil
case month
when '3月', '4月', '5月' then
  season = '春'
when '6月', '7月', '8月' then
  season = '夏'
when '9月', '10月', '11月' then
  season = '秋'
when '12月', '1月', '2月' then
  season = '冬'
end

puts season + 'です。'

feel = nil
if month == '8月' then
  feel = '猛暑'
elsif month == '12月' then
  feel = '極寒'
end

if feel != nil then
  puts feel + 'です。'
end
