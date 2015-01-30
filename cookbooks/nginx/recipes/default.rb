# Cookbook Name:: nginx
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
package "haproxy" do
# version-release "1.5-dev19" 
# release "2013/06/17"
# version "10.16.2"
# release "1.7.3"
 action :install
end

template "haproxy.cfg" do
 source "haproxy.cfg.erb"
 path "/etc/haproxy/haproxy.cfg"
end

service 'haproxy' do
 action [:enable, :start]
end

