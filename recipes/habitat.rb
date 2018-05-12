# frozen_string_literal: true

ark 'hab' do
  url node['jsirex']['workstation']['habitat']['download_url']
  version 'latest'
end

hab_bin = '/usr/local/hab-latest/hab'

# Always run to make sure we're using latest one
execute 'hab-install' do
  # Install habitat via habitat
  command "#{hab_bin} pkg install core/hab && #{hab_bin} pkg binlink core/hab hab --force"
  not_if 'which hab'
end
