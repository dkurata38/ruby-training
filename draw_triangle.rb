puts '高さを入力してください。'
str_height = gets.chomp

if str_height.nil? || str_height.empty? then
  puts '高さを入力してください。'
  exit
#elsif str_height !~ /¥d/
#  puts '高さは数値で入力してください。'
#  exit
end

height = str_height.to_i
triangle = ""
(1..height).each do |x|
  line = ""
  if x > 1 then
    line << "\n"
  end
  space_num = height - x
  (1..space_num).each do
    line << "\s"
  end
  (1..x).each do
    line << "▲\s"
  end
  (1..space_num).each do
    line << "\s"
  end
  triangle << line
end
puts triangle
