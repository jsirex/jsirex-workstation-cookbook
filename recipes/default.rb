# frozen_string_literal: true

case node.name
when 'sirex-notebook'
  include_recipe 'jsirex-workstation::notebook'

when 'sirex-pc'
  include_recipe 'jsirex-workstation::pc'

else
  include_recipe 'jsirex-workstation::common'
end
