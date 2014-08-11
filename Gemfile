source 'https://rubygems.org'

# Uncomment these lines if you want to live on the Edge:
#
# group :development do
#   gem "berkshelf", github: "berkshelf/berkshelf"
#   gem "vagrant", github: "mitchellh/vagrant", tag: "v1.5.2"
# end
#
# group :plugins do
#   gem "vagrant-berkshelf", github: "berkshelf/vagrant-berkshelf"
#   gem "vagrant-omnibus", github: "schisamo/vagrant-omnibus"
# end

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
  gem "guard"
  gem "guard-kitchen"
end
