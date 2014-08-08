name             'splunk_config'
maintainer       'Luis Rodriguez'
maintainer_email 'luis.rodriguez@cru.org'
license          'Apache 2.0'
description      'configure splunk forwarder'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

recipe 'splunk_config::default'

supports 'amazon'
supports 'centos'
supports 'debian'
supports 'fedora'
supports 'redhat'
supports 'ubuntu'


depends "chef-splunk"

source "https://rubygems.org"

gem "berkshelf",  "~> 2.0"
gem "chef",       "~> 11.0"
gem "chefspec",   "~> 3.0"
gem "foodcritic", "~> 3.0"
gem "rake"
gem "yarjuf"

group :integration do
  gem "test-kitchen", "~> 1.0"
  gem "kitchen-vagrant"
  gem "kitchen-docker"
end
