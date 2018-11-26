class AbstractBorder
  def initialize(str)
    @str = str
  end
  def header_fotter
    raise "override header_fotter"
  end
  def body
    raise "override body"
  end
  def bordered
    result = ''
    result << header_fotter
    result << "\n"
    result << body
    result << "\n"
    result << header_fotter
  end
end

class FlexibleBorder < AbstractBorder
  def initialize(str)
    super(str)
  end
  def header_fotter
    return '+' + '-' * @str.length + "+"
  end
  def body
    return '|' + @str + "|"
  end
  def bordered
    super
  end
end

class FixedBorder < AbstractBorder
  def initialize(str)
    super(str)
  end
  def header_fotter
    return '*****'
  end
  def body
    body = ''
    index = 1
    @str.each_char { |chr|
      body += chr.to_s
      if index == 5
        body += "\n"
        index = 0
      end
      index += 1
    }
    return body
  end
  def bordered
    super
  end
end

puts '半角英数の文字列を入力してください。'
str = gets.chomp

text_maker = nil
if str.length <= 5
  text_maker = FlexibleBorder.new(str)
else
  text_maker = FixedBorder.new(str)
end
puts text_maker.bordered
