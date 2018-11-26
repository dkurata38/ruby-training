class Employee
  attr_accessor :emp_no, :emp_name, :salary
end

puts '社員数を入力してください。'
input_num = gets.chomp.to_i

employees = []
input_num.times do
  emp = Employee.new
  puts '社員番号を入力してください。'
  emp.emp_no = gets.chomp
  puts '社員名を入力してください。'
  emp.emp_name = gets.chomp
  puts '月給を入力してください。'
  emp.salary = gets.chomp.to_i

  employees.push emp
end

total_salary = 0;
employees.each do |emp|
  total_salary += emp.salary
end

employees.each do |emp|
  result = "";
  result << "社員番号:"
  result << emp.emp_no
  result << "\t社員名:"
  result << emp.emp_name
  result << "\t月給:"
  result << emp.salary.to_s
  puts result
end
puts '月給合計:' + total_salary.to_s
