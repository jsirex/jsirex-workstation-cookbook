# frozen_string_literal: true

include_recipe 'jsirex-workstation::apt'
include_recipe 'jsirex-workstation::git'

%w[emacs-snapshot].each do |pkg|
  package pkg do
    action :upgrade
  end
end

git '/home/sirex/.emacs.d' do
  repository 'git@github.com:jsirex/emacs.d.git'
  revision 'master'
  ignore_failure true

  user 'sirex'

  action :checkout
end
