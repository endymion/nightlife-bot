# Be sure to restart your server when you modify this file

# Specifies gem version of Rails to use when vendor/rails is not present
RAILS_GEM_VERSION = '3.0' unless defined? RAILS_GEM_VERSION

# Bootstrap the Rails environment, frameworks, and default configuration
require File.join(File.dirname(__FILE__), 'boot')

Rails::Initializer.run do |config|
  
  config.gem "authlogic"
  config.gem "levenshtein"
  config.gem 'redgreen'
  config.gem "thoughtbot-factory_girl", :lib    => "factory_girl", :source => @github
  config.gem 'thoughtbot-shoulda', :lib => 'shoulda', :source => @github


  config.gem 'thoughtbot-shoulda', :lib => 'shoulda' , :source => "http://gems.github.com"
  config.gem 'jscruggs-metric_fu', :version => '1.1.5', :lib => 'metric_fu', :source => 'http://gems.github.com'
  config.time_zone = 'UTC'
end