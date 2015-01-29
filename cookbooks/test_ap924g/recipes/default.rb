#
# Cookbook Name:: test_ap924g
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
cron "test" do
 minute "10"
 hour "10"
 command "/tmp/1.sh"
end

cookbook_file "abcd.txt" do
  path "/tmp"
  action :create
#  owner "root"
#  group "root"
#  files_mode "755"
end
