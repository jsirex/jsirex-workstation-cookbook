# frozen_string_literal: true

include_recipe 'jsirex-workstation::apt'
include_recipe 'jsirex-workstation::git'

git '/home/sirex/.oh-my-zsh' do
  repository 'https://github.com/robbyrussell/oh-my-zsh.git'
  revision 'master'

  user 'sirex'

  action :checkout
end

git '/home/sirex/.oh-my-zsh/custom' do
  repository 'git@github.com:jsirex/oh-my-zsh-custom.git'
  revision 'master'

  user 'sirex'

  action :checkout
end

template '/home/sirex/.zshrc' do
  source 'zshrc.erb'

  user 'sirex'
  group 'sirex'
  mode '0644'
end

package 'zsh' do
  action :upgrade
end

execute 'set-zsh-shell' do
  command 'chsh -s /usr/bin/zsh sirex'

  not_if 'getent passwd sirex | cut -d: -f7 | grep /usr/bin/zsh > /dev/null'
end
