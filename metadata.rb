# frozen_string_literal: true

name             'jsirex-workstation'
maintainer       'Yauhen Artsiukhou'
maintainer_email 'jsirex@gmail.com'
license          'Apache-2.0'
description      'This cookbook prepares my workstations'
version          '0.1.0'

issues_url       'https://github.com/jsirex/jsirex-workstation-cookbook/issues'
source_url       'https://github.com/jsirex/jsirex-workstation-cookbook'

supports 'debian'
# supports 'centos'

# depends 'cookbook', '>= 0.0.0'

chef_version '>= 14'

# Provided recipes
recipe 'jsirex-workstation::default', 'This cookbook prepares my workstations'

# Automatically installed gems before chef run (new in 12.8)
# gem 'whatever'
