require "foodcritic"
#require "rspec/core/rake_task"

desc "Run Foodcritic lint checks"
FoodCritic::Rake::LintTask.new(:lint) do |t|
  t.options = { :fail_tags => ["correctness"] }
end

desc "Run ChefSpec examples"
RSpec::Core::RakeTask.new(:spec) do |t|
  t.rspec_opts = %w[-f JUnit -o results.xml]
end

desc "Run all tests"
task :test => [:lint, :spec]
task :default => :test

begin
  require "kitchen/rake_tasks"
  Kitchen::RakeTasks.new

  desc "Alias for kitchen:all"
  task :integration => "kitchen:all"

  task :test => :integration
rescue LoadError
  puts ">>>>> Kitchen gem not loaded, omitting tasks" unless ENV['CI']
end
# Rakefile

# -f correctness only fails the build on syntax violations.
# The warnings scan will still count and graph other violations.
desc 'Foodcritic correctness linting task'
task :foodcritic do
  sh 'foodcritic -f correctness .'
end

# --fail-level E will only fail Ruby errors.
# The warnings scan will still count and graph [W]arning and [C]op violations.
desc 'Rubocop linting task'
task :rubocop do
  sh 'rubocop --fail-level E'
end

# touchstone task
task jenkins: %w(rubocop foodcritic)
