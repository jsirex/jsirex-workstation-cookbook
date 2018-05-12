# Description

This cookbook helps to prepare my workstation

# TODO

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

* ark
* git

# Attributes

* `node['jsirex']['workstation']['terraform']['download_url']` -  Defaults to `https://releases.hashicorp.com/terraform/0.11.7/terraform_0.11.7_linux_amd64.zip`.
* `node['jsirex']['workstation']['terraform']['version']` -  Defaults to `0.11.7`.
* `node['jsirex']['workstation']['habitat']['download_url']` -  Defaults to `https://api.bintray.com/content/habitat/stable/linux/x86_64/hab-$latest-x86_64-linux.tar.gz?bt_package=hab-x86_64-linux`.

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
