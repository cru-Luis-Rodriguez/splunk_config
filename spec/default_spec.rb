require "spec_helper"

# Write unit tests with ChefSpec - https://github.com/sethvargo/chefspec#readme
describe "skeleton::default" do
  let (:chef_run) { ChefSpec::Runner.new.converge(described_recipe) }

  it "does something" do
   expect(chef_run).to render_file('/opt/splunkforwarder/etc/apps/search/local/inputs.conf')
  end
end
