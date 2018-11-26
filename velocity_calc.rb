class Couple_num_unit
  def initialize(num, unit)
    @num = num
    @unit = unit
  end
  attr_reader :num, :unit
end

def divide_unit str
  num_part = ''
  unit_part = ''
  str.each_char { |chr|
    if number? chr
      num_part += chr.to_s
    else
      unit_part += chr.to_s
    end
  }
  return Couple_num_unit.new(num_part.to_i, unit_part)
end

def number? c
  return c =~ /\d/
end

puts '距離を単位付きで入力してください。'
input_distance = gets.chomp
puts '時間を単位付きで入力してください。'
input_time = gets.chomp

distance = divide_unit input_distance
time = divide_unit input_time

velocity = distance.num / time.num

result = ''
result << '速度は'
result << velocity.to_s
result << distance.unit
result << '/'
result << time.unit
result << 'です。'

puts result
