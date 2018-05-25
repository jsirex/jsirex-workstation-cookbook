# frozen_string_literal: true

# Slack doesn't have a repo, so ugly dance here
slack_url = node['jsirex']['workstation']['slack']['download_url']
slack_deb = File.join(Chef::Config[:file_cache_path], File.basename(slack_url))

remote_file slack_deb do
  source slack_url

  notifies :run, 'execute[install-slack]', :immediately
end

execute 'install-slack' do
  command "apt-get -q -y install #{slack_deb}"

  action :nothing
end
