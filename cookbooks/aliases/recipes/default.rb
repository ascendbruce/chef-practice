#
# Cookbook Name:: aliases
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

# Alias `h` to go home
magic_shell_alias 'h' do
  command 'cd ~'
end

# Alias `ll` to ls -l
magic_shell_alias 'll' do
  command 'ls -l'
end

# Alias `lla` to ls -al
magic_shell_alias 'lla' do
  command 'ls -al'
end

# Alias `sites` to cd into apache
magic_shell_alias 'sites' do
  command "cd #{node['apache']['dir']}/sites-enabled" 
end

# Set Nano as the default editor
magic_shell_environment 'EDITOR' do
  value 'nano'
end

