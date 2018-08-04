# frozen_string_literal: true

##########################
# Software download urls
##########################

default['jsirex']['workstation']['terraform']['download_url'] = 'https://releases.hashicorp.com/terraform/0.11.7/terraform_0.11.7_linux_amd64.zip'
default['jsirex']['workstation']['terraform']['version'] = '0.11.7'

default['jsirex']['workstation']['habitat']['download_url'] = 'https://api.bintray.com/content/habitat/stable/linux/x86_64/hab-$latest-x86_64-linux.tar.gz?bt_package=hab-x86_64-linux'

default['jsirex']['workstation']['minishift']['download_url'] = 'https://github.com/minishift/minishift/releases/download/v1.17.0/minishift-1.17.0-linux-amd64.tgz'
default['jsirex']['workstation']['minishift']['version'] = '1.17.0'
default['jsirex']['workstation']['minishift']['config'].tap do |config|
  config['cpus'] = 2
  config['disk-size'] = '120GB'
  # 75% of memory = 3 / 4
  config['memory'] = (node['memory']['total'][/\d+/].to_i / 1024) * 3 / 4
  config['openshift-version'] = '3.9.0'
  config['vm-driver'] = 'virtualbox'
end

default['jsirex']['workstation']['slack']['download_url'] = 'https://downloads.slack-edge.com/linux_releases/slack-desktop-3.2.0-beta25a7a50e-amd64.deb'

default['jsirex']['workstation']['vagrant']['download_url'] = 'https://releases.hashicorp.com/vagrant/2.1.2/vagrant_2.1.2_x86_64.deb'
default['jsirex']['workstation']['vagrant']['checksum'] = 'f614a60b258a856322f23d33a24201d26ab2555d047814fec403e834eb7d62b4'
default['jsirex']['workstation']['vagrant']['version'] = '1:2.1.2'

# Docker
default['jsirex']['workstation']['docker']['version'] = '18.06.0'
default['jsirex']['workstation']['docker']['daemon']['experimental'] = true

# Docker Compose
default['jsirex']['workstation']['docker-compose']['version'] = '1.21.2'
