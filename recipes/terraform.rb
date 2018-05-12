# frozen_string_literal: true

# Due to bug: https://github.com/chef-cookbooks/ark/issues/204
# ark 'terraform' do
#   url node['jsirex']['workstation']['terraform']['download_url']
#   version node['jsirex']['workstation']['terraform']['version']
# end

cached_zip = File.join(Chef::Config[:file_cache_path], 'terraform.zip')

remote_file 'terraform-zip' do
  source node['jsirex']['workstation']['terraform']['download_url']
  path cached_zip

  notifies :run, 'execute[extract-terraform-zip]', :immediately
end

execute 'extract-terraform-zip' do
  command "unzip -q -o #{cached_zip} -d /usr/local/bin"

  action :nothing
end

template 'terraform-configuration' do
  path '/home/sirex/.terraformrc'
  source 'terraformrc.erb'
end
