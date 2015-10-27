# -*- mode: ruby -*-
# vi: set ft=ruby :

require 'yaml'

# Before use:
# Create a file
# .envs.yml
# -----------
# loggly:
#   token: <Loggly API Token>

settings = YAML.load_file '.envs.yml'

Vagrant.configure("2") do |config|
  config.vm.synced_folder ".", "/vagrant", disabled: true

  config.vm.provider "docker" do |d|
    d.vagrant_vagrantfile = "host/Vagrantfile"
    d.build_dir = "."
    d.has_ssh = false
    d.ports = ["24224:24224"]
    d.env = {
        TOKEN: settings['loggly']['token'],
        NODE_HOSTNAME: "`hostname`"
    }
  end
end
