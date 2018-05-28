# frozen_string_literal: true

# include_recipe 'chef-apt-docker::default'
docker_installation_package 'default' do
  version node['jsirex']['workstation']['docker']['version']
  package_options "-o Dpkg::Options::='--force-confold' -o Dpkg::Options::='--force-all'"
end

docker_service_manager 'default' do
  action :start
end

file '/etc/docker/daemon.json' do
  content JSON.pretty_generate(node['jsirex']['workstation']['docker']['daemon'])
  notifies :restart, 'docker_service_manager[default]', :delayed
end

# Install docker compose
version = node['jsirex']['workstation']['docker-compose']['version']
remote_file '/usr/local/bin/docker-compose' do
  source "https://github.com/docker/compose/releases/download/#{version}/docker-compose-Linux-x86_64"
end
