# ~/setup.rb
package 'emacs'
package 'ntp'

package 'tree' do
  action :install
end

package 'git' do
  action :install
end

template '/etc/motd' do
  source 'motd.erb'
  variables(
     :name => 'technotrainer'
)
  action :create
end
user 'user1' do
comment 'user1'
uid '123'
home '/home/user1'
shell '/bin/bash'
end
group 'admins' do
  members 'user1'
end
