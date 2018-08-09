require 'open3'

read_io, write_io = IO.pipe

child = fork do


end
Open3.popen3('cloud-tool-fr login') do |stdin, stdout, stderr, wait_thr| 
  line = stdout.gets
  puts line

  #while line = stdout.gets
    if line == "Enter number A\n"
      stdin.write("10\n")
    elsif line == "Enter number B\n"
      stdin.write("30\n")
    else
      puts line
    end
  end
#end
#STDIN.print "echo hello"
#system 'cloud-tool-fr login'
tmux send-keys -t 1 "MGMT\m6064854" Enter

#system 'MGMT\m6064854 \r'
