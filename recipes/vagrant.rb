# frozen_string_literal: true

vagrant_url = node['jsirex']['workstation']['vagrant']['download_url']
vagrant_checksum = node['jsirex']['workstation']['vagrant']['checksum']
vagrant_version = node['jsirex']['workstation']['vagrant']['version']

vagrant_deb = File.join(Chef::Config[:file_cache_path], File.basename(vagrant_url))

remote_file vagrant_deb do
  source vagrant_url
  checksum vagrant_checksum
end

dpkg_package "vagrant-#{vagrant_version}" do
  source vagrant_deb
  version vagrant_version
end
