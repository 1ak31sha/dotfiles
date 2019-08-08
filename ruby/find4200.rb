filesNfolders =  `ls`
puts filesNfolders
arr = Array.new

filesNfolders.each_line {|branch, index|
  matches = branch.split(" ")
  arr << matches.last
}

data = ' ' 
arr.each_with_index {|b, i|
  data = `#{data} #{b}`
  puts "#{i}: #{b}"
}
result = `cat #{data}`
#branch_selected = ""
#selection = gets.chomp
#arr.each_with_index {|b, i|
#  if i == selection.to_i
#    branch_selected = b
#  end
#}
#puts `git checkout #{branch_selected}`

