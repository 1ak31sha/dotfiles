import pexpect
print "hello"
#COMMAND_PROMPT = r"\MGMT\$"
#child = pexpect.run('ls -la')
child = pexpect.spawn('cloud-tool-fr login')
#child = pexpect.spawn('cloud-tool-fr login')
#child = pexpect.spawn('ls')
child.logfile = open("./snakeoil/mylog", "w")
#child.expect (COMMAND_PROMPT)
#child.expect(pexpect.EOF)
#print child.read()
#child.sendline("asdf\r")
#print child.read()
#MGMT Username (MGMT\MXXXXXXX): 
child.expect('Username')
# print all data in the stream before the prompt
print child.before,
# print the data that was matched
print child.after,
#child.expect("MGMT Username (MGMT\MXXXXXXX): ")
#print child.read()
#child.sendline("asdf\r")
#print child.read()
