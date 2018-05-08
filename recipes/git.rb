# frozen_string_literal: true

include_recipe 'jsirex-workstation::apt'

git_client 'default' do
  action :install
end

%w[gitk tig gitg git-review].each do |pkg|
  package pkg
end
