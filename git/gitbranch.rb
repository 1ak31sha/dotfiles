branches =  `git branch`
arr = Array.new

branches.each_line {|branch, index|
  matches = branch.split(" ")
  arr << matches.last
}
arr.each_with_index {|b, i|
  puts "#{i}: #{b}"
}
branch_selected = ""
selection = gets.chomp
arr.each_with_index {|b, i|
  if i == selection.to_i
    branch_selected = b
  end
}
puts `git checkout #{branch_selected}`
