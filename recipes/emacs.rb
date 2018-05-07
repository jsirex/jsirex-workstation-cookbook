# frozen_string_literal: true

include_recipe 'jsirex-workstation::git'

%w[emacs25].each do |pkg|
  package pkg do
    action :upgrade
  end
end

git '/home/sirex/.emacs.d' do
  repository 'git@github.com:jsirex/emacs.d.git'
  revision 'master'
  ignore_failure true

  action :sync

  not_if { File.directory? '/home/sirex/.emacs.d' }
end
