# Description

This cookbook helps to prepare my workstation

# TODO

1. Terraform
2. Telegram
3. Nvidia Drivers
4. Yed
5. Dynamic user - remove hardcoded `sirex`
6. Desktop Packages: gparted, kde-full/task-kde-desktop, chromium
7. Vagrant
8. VirtualBox
9. Build Essential
10. Tools for screencasts (examine notebook)
11. Java Package
12. Docker
13. SSH Configuration

# Requirements

## Platform:

* debian

## Cookbooks:

* git

# Attributes

* `node['jsirex']['workstation']['foo']` -  Defaults to `bar`.

# Recipes

* jsirex-workstation::default - Automatically detects node and runs required recipes
* jsirex-workstation::common - Recipes used everywhere
* jsirex-workstation::pc - Recipes used at my home computer
* jsirex-workstation::notebook - Recipes used at my notebook

# License and Maintainer

Maintainer:: Yauhen Artsiukhou (<jsirex@gmail.com>)

Source:: https://github.com/jsirex/jsirex-workstation-cookbook

Issues:: https://github.com/jsirex/jsirex-workstation-cookbook/issues

License:: Apache-2.0
