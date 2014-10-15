#
# Cookbook Name:: ci_dependencies
# Recipe:: default
#
# Copyright (C) 2013 SendGrid
#
# All rights reserved - Do Not Redistribute
#
bash "#{node['omnibus']['build_dir']}/.jenkins" do
  user node['omnibus']['build_user']
end
