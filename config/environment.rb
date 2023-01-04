# Load the Rails application.
require_relative "application"
envs = File.join(Rails.root, 'config', 'envs.rb')
load(envs) if File.exist?(envs)
# Initialize the Rails application.
Rails.application.initialize!
