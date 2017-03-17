require "bundler"
require "cucumber/rake/task"
require "rake/clean"

Bundler::GemHelper.install_tasks
Cucumber::Rake::Task.new(:cucumber, "Run features that should pass") do |t|
  t.cucumber_opts = "--color --tags ~@wip --strict"
end

task test: ["cucumber"]

task default: :test
