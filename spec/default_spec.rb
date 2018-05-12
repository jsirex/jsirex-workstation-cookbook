# frozen_string_literal: true

require 'spec_helper'

describe 'jsirex-workstation::default' do
  cached(:chef_run) do
    ChefSpec::SoloRunner.new(platform: 'debian', version: '9.2').converge(described_recipe)
  end

  before do
    stub_command('getent passwd sirex | cut -d: -f7 | grep /usr/bin/zsh > /dev/null').and_return(false)
    stub_command('which hab').and_return(false)
  end

  it 'runs' do
    expect(chef_run)
  end
end
