puts 'ディレクトリパスを入力してください。'
directory_path = gets.chomp
puts '最低サイズを入力してください。
  末尾にkをつけるとキロバイト。
  mをつけるとメガバイトとして処理します。'
str_min_size = gets.chomp
min_size = nil
if str_min_size =~ /*m/
  min_size = str_min_size.chop.to_i * 1000000
elsif str_min_size =~ /*k/
  min_size = str_min_size.chop.to_i * 1000
end

file_list = Dir::entries(directory_path)

large_file_list = []
file_list.each do |x|
  file_path = directory_path + x
  stat = File.stat(file_path)
  if stat.file? then
    file_size = stat.size(file_path)
    if file_size >= min_size
      large_file_list.push(x + ':' + file_size)
    end
  end
end

large_file_list.each do |x|
  puts x
end
