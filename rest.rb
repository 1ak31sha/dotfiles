
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
#get the list of featurefiles
#check the fist line of each feature file and take the first @pattern match
# ->for each of those, check that file for enumerated @patterns
#print the list of tests for user to choose with number option
#bonus - print it nicely formatted and with descriptions
#show the browsers and get user option
#show the environments and get user options
#execute the maven command
#bonus - allow multiple tags to get added by user

