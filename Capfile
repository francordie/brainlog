# Load DSL and set up stages
require "capistrano/setup"

# Include default deployment tasks
require "capistrano/deploy"

require 'capistrano/rails'
require 'capistrano/bundler'

require 'capistrano/puma'
install_plugin Capistrano::Puma

require "capistrano/scm/git"
install_plugin Capistrano::SCM::Git

require 'rvm1/capistrano3'
# deploy.rb or stage file (staging.rb, production.rb or else)
# set :rvm_type, :user # Searches in ~/.rvm
# set :rvm_ruby_version, 'ruby-2.4.0@brainlog'
#set :rvm_custom_path, '~/.myveryownrvm'  # only needed if not detected

# Include tasks from other gems included in your Gemfile
#
# For documentation on these, see for example:
#
#   https://github.com/capistrano/rvm
#   https://github.com/capistrano/rbenv
#   https://github.com/capistrano/chruby
#   https://github.com/capistrano/bundler
#   https://github.com/capistrano/rails
#   https://github.com/capistrano/passenger
#
# require "capistrano/rvm"
# require "capistrano/rbenv"
# require "capistrano/chruby"
# require "capistrano/bundler"
# require "capistrano/rails/assets"
# require "capistrano/rails/migrations"
# require "capistrano/passenger"

# Load custom tasks from `lib/capistrano/tasks` if you have any defined
Dir.glob("lib/capistrano/tasks/*.rake").each { |r| import r }
