
dir="~/workspace/accelus-wc1-test-framework/ui-acceptance-tests/src/test/resources/features/media_check"

#Get all the file locations
files = `find #{dir} -name "*.feature"`

arr = Array.new
files.each_line do |value, index|
	value.delete!("\n")
	file = File.open("#{value}", "r")
	firstline = file.readline
	match_array = firstline.scan(/@[^\s]+/)
	match_array.each do |tag|
	  if arr.include? tag
		else
      arr << tag
      file.each_line do |line|
        match = line.scan(/@[^\s]+\d/)
        if match.length > 0
          match.each do |m|
            arr << m 
          end
        end
      end
		end
	end
end

puts arr.length
puts "choose a test"
  arr.each_with_index {|value,index|
    puts "#{index}: #{value}"
  }
test_selection = gets.chomp
test_selected = ""
arr.each_with_index {|v,i|
  if i == test_selection.to_i
    test_selected = v
  else
  end
}
puts "test selected: #{test_selected}"
puts "---------------------------------------"
browArr = Array.new
browArr << "firefox" 
browArr << "chrome"
browArr << "ie"
browArr << "safari"
browArr << "edge?"

browArr.each_with_index {|v,i|
  puts "#{i}: #{v}"
}
selection = gets.chomp
brow_selected = ""
browArr.each_with_index {|v,i|
  if i == selection.to_i
    brow_selected = v
  elsif selection.length == 0
    brow_selected = "firefox"
    
    break
  end
}
#selection = gets.chomp
puts brow_selected

puts "---------------------------------------"
envArr = Array.new
envArr << "ci" 
envArr << "uat"

envArr.each_with_index {|v,i|
  puts "#{i}: #{v}"
}
selection = gets.chomp
env_selected = ""
envArr.each_with_index {|v,i|
  if i == selection.to_i
    env_selected = v
  elsif selection.length == 0
    env_selected = "ci" 
    break
  end
}
#selection = gets.chomp
puts env_selected

puts `mvn clean verify -pl acceptance-tests-common,ui-acceptance-tests -Duser=ci.mainUser -Dpassword=LowerEnvUser_2 -Dhost=#{env_selected} -Dbrowser='#{brow_selected}' -Dcucumber.options=' --tags #{test_selected} '`


