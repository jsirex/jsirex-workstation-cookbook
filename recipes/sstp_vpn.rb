# frozen_string_literal: true

include_recipe 'jsirex-workstation::apt'

apt_repository 'eivnaes-network-manager-sstp' do
  uri 'http://ppa.launchpad.net/eivnaes/network-manager-sstp/ubuntu'
  distribution 'devel'
  components %w[main]
  keyserver 'keyserver.ubuntu.com'
  key '61FF9694161CE595'
end

package 'network-manager-sstp'
