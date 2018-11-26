class Item
  attr_accessor :item_name, :unit_price, :item_num
  def culculate_subtotal
    return unit_price * item_num
  end
end

item_list = []
while true
  item = Item.new
  puts '商品名を入力してください。'
  item.item_name = gets.chomp
  puts '単価を入力してください。'
  item.unit_price = gets.chomp.to_i
  puts '購入個数を入力してください。'
  item.item_num = gets.chomp.to_i
  item_list.push item
  puts '他の商品も購入しますか?(y/n)'
  buy_more = gets.chomp
  if buy_more == 'n'
    break
  end
end

total_price = 0
item_list.each do |item|
  total_price += item.culculate_subtotal
end

result = ""
item_list.each do |item|
  result << item.item_name
  result << "×"
  result << item.item_num.to_s
  result << ":"
  result << item.culculate_subtotal.to_s
  result << "円\n"
end
result << "合計\s"
result << total_price.to_s
result << "円"
puts result
