#
# Cookbook Name:: ci_dependencies
# Recipe:: default
#
# Copyright (C) 2013 SendGrid
#
# All rights reserved - Do Not Redistribute
#
bash 'run dot jenkins' do
  user node['omnibus']['build_user']
  cwd node['omnibus']['build_dir']
  code <<-EOH
bash -le /home/vagrant/sgbuild/.jenkins
EOH
end
