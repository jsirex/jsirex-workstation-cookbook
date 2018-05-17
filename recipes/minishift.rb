# frozen_string_literal: true

ark 'minishift' do
  url node['jsirex']['workstation']['minishift']['download_url']
  version node['jsirex']['workstation']['minishift']['version']
  has_binaries ['minishift']
end

directory '/home/sirex/.minishift/config' do
  owner 'sirex'
  group 'sirex'
  mode '0755'
  recursive true
end

config_path = '/home/sirex/.minishift/config/config.json'

config = File.exist?(config_path) ? config = JSON.parse(IO.read(config_path)) : {}
config = Chef::Mixin::DeepMerge.deep_merge(node['jsirex']['workstation']['minishift']['config'], config)

file config_path do
  content JSON.pretty_generate(config)
  owner 'sirex'
  group 'sirex'
  mode '0644'
end
