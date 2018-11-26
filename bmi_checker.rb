puts '体重(kg)を入力してください。'
weight = gets.chomp.to_f

puts '身長を入力してください。'
height = gets.chomp.to_f

height_meter = height / 100
bmi = weight / (height_meter * height_meter)

figure = nil
if bmi < 18.5 then
  figure = '低体重'
elsif bmi <= 25 then
  figure = '普通体重'
else
  figure = '肥満'
end

puts figure
