require 'rubygems'
require 'net/ssh'
require 'pry'

@hostname = "ec2-177-71-205-249.sa-east-1.compute.amazonaws.com"
@pem = 'docker-test.pem'
@username = "ubuntu"
@password = "ubuntu"
@cmd = "ls -al"
binding.pry
 begin
 binding.pry
    ssh = Net::SSH.start(@hostname, @pem) # , :password => @password
    binding.pry
	res = ssh.exec!(@cmd)
    ssh.close
    puts res
  rescue
    puts "Unable to connect to #{@hostname} using #{@username}/#{@password}"
  end