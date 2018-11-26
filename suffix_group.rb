puts 'ディレクトリパスを入力してください。'
directory_path = gets.chomp

file_list = Dir::entries(directory_path)
suffix_file_map = {}
file_list.each do |file|
  file_path = directory_path + file
  if File.stat(file_path).file? == false
    next
  end
  extend_name = File.extname(file_path).intern
  if suffix_file_map.key? extend_name
    file_group = suffix_file_map[extend_name]
    file_group.push(file)
  else
    file_group = [file]
    suffix_file_map[extend_name] = file_group
  end
end

suffix_file_map.sort_by { |key, value| key }

result = ""
suffix_file_map.each do |key, value|
  result << key.to_s
  result << ":\n"
  file_group = value
  file_group.sort!
  file_group.each do |file|
    result << "\t"
    result << file
    result << "\n"
  end
end

puts result
