# ~/setup.rb


package 'tree' do
	action :install
end

package 'git' do
	action :install
end

package 'ntp'

#file '/etc/motd' do
#	content "This server is the property of Lou Lin-Yuan
#
#	HOSTNAME:  #{node['hostname']} 
#	IPADDRESS: #{node['ipaddress']}
#	MEMORY:	   #{node['memory']['total']}
#	CPU:	   #{node['cpu']['0']['mhz']}	
#"	
#	action :create

template '/etc/motd' do
	source 'motd.erb'
end
