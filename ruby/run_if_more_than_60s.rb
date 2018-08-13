require 'time'
require 'time_difference'
text = 'temp'
Dir.chdir("#{ENV['DOTFILES']}/ruby") do
	text=File.open('ecp_last_run.txt') {|f| f.readline}
end

now = Time.now
old = Time.parse(text)
diff= now-old.to_i
diff = TimeDifference.between(now, old).in_seconds

puts ARGV[0]
if diff < 60 
	puts "Please wait #{60 - diff} seconds before running the test"
else
  Dir.chdir("/Users/u6064854/workspace/aws-registry-apitesting") do
  	#system 'gradle clean --info allE2ETests -Dkarate.env=preprod -Dkarate.properties=https://mkazgdah0l.execute-api.us-east-1.amazonaws.com/u0056119 -PtestProfile=a-corporate-preprod -PprojectName=ecpregistry -PtopicARN=a204121-control-ecpmeta-u0056119-use1 -PRegistryQueue=a204121-registryqueue-ecpmeta-u0056119-use1 -Ptestprefix=foo -PSSM_PASSWORD_PARAMETER=a204121-kms-ecpmeta-registry -PBUCKETNAME=a204121-content-ecpmeta-u0056119-use1 -PTABLENAME=a204121-s3indextable-ecpmeta-u0056119-use1 -Dcucumber.options="--tags @Graph"' 
    #system 'gradle clean --info allE2ETests -Dkarate.env=preprod -Dkarate.properties=https://39u3st4qhj.execute-api.us-east-1.amazonaws.com/e2e -PtestProfile=a-corporate-preprod -PprojectName=ecpregistry -PtopicARN=a204121-control-ecpmeta-u0056119-use1 -PRegistryQueue=a204121-registryqueue-ecpmeta-u0056119-use1 -Ptestprefix=foo -PSSM_PASSWORD_PARAMETER=a204121-kms-ecpmeta-registry -PBUCKETNAME=a204121-content-ecpmeta-u0056119-use1 -PTABLENAME=a204121-s3indextable-ecpmeta-u0056119-use1 -Dcucumber.options="--tags @Graph"' 
    #system ("gradle clean --info allE2ETests -Dkarate.env=preprod -Dkarate.properties=https://39u3st4qhj.execute-api.us-east-1.amazonaws.com/e2e -PtestProfile=a-corporate-preprod -PprojectName=ecpregistry -PtopicARN=a204121-control-ecpmeta-e2e-use1 -PRegistryQueue=a204121-registryqueue-ecpmeta-e2e-use1 -Ptestprefix=foo -PSSM_PASSWORD_PARAMETER=a204121-kms-ecpmeta-registry -PBUCKETNAME=a204121-content-ecpmeta-e2e-use1 -PTABLENAME=a204121-s3indextable-ecpmeta-e2e-use1 -Dcucumber.options=\"--tags " + ARGV[0] + "\"")
    system ("gradle clean --info allE2ETests -Dkarate.env=preprod -Dkarate.properties=https://39u3st4qhj.execute-api.us-east-1.amazonaws.com/e2e -PtestProfile=a-corporate-preprod -PprojectName=ecpregistry -PtopicARN=a204121-control-ecpmeta-e2e-use1 -PRegistryQueue=a204121-registryqueue-ecpmeta-e2e-use1 -Ptestprefix=foo -PSSM_PASSWORD_PARAMETER=a204121-kms-ecpmeta-registry -PBUCKETNAME=a204121-content-ecpmeta-e2e-use1 -PTABLENAME=a204121-s3indextable-ecpmeta-e2e-use1 -Dcucumber.options=\"--tags " + ARGV[0].to_s + "\"")
	end
 	Dir.chdir("#{ENV['DOTFILES']}/ruby") do
		File.open("ecp_last_run.txt", 'w') { |file| file.write("#{now}") }
	end
end
