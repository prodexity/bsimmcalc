# config valid for current version and patch releases of Capistrano
lock "~> 3.10.1"

load 'lib/capistrano/tasks/seed.rb'

set :application, "bsimmcalc"
#set :repo_url, "ssh://git@gitlab.com:prodexity/bsimmcalc.git"
set :repo_url, "https://github.com/prodexity/bsimmcalc"

# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

# Default deploy_to directory is /var/www/my_app_name
# set :deploy_to, "/var/www/my_app_name"

# Default value for :format is :airbrussh.
# set :format, :airbrussh

# You can configure the Airbrussh format using :format_options.
# These are the defaults.
# set :format_options, command_output: true, log_file: "log/capistrano.log", color: :auto, truncate: :auto

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
# append :linked_files, "config/database.yml", "config/secrets.yml"

# Default value for linked_dirs is []
append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "public/system"

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for local_user is ENV['USER']
# set :local_user, -> { `git config user.name`.chomp }

# Default value for keep_releases is 5
set :keep_releases, 3

# Uncomment the following to require manually verifying the host key before first deploy.
# set :ssh_options, verify_host_key: :secure

# Add environment variables for the duration of the deployment
set :default_env, { 
  'SECRET_KEY_BASE' => 'dummy' # This is needed to run asset compilation with Devise, but the actual value is never used
}

# -------------------------------
# capistrano-rails settings below
# See https://github.com/capistrano/rails/

# Defaults to :db role
set :migration_role, :app

# Skip migration if files in db/migrate were not modified
set :conditionally_migrate, true

# Defaults to nil (no asset cleanup is performed)
# If you use Rails 4+ and you'd like to clean up old assets after each deploy,
# set this to the number of versions to keep
set :keep_assets, 2

# Configure your asset depedencies in deploy.rb if you need to check additional paths
# (e.g. if you have some assets in YOUR_APP/engines/YOUR_ENGINE/app/assets).
# This comes from capistrano-faster-assets.
# set :assets_dependencies, %w(app/assets lib/assets vendor/assets Gemfile.lock config/routes.rb)

set :passenger_restart_with_touch, false
#set :passenger_restart_command, 'passenger-config restart-app'
#set :passenger_restart_options, -> { "#{deploy_to} --ignore-app-not-running" }
