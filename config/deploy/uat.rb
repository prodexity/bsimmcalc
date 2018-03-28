# Defines a role with one or multiple servers. The primary server in each
# group is considered to be the first unless any hosts have the primary
# property set. Specify the username and a domain or IP for the server.
# Don't use `:all`, it's a meta role.

role :app, %w{bsimmcalc-uat@uat.bsimmcalc.prodexity.com}
role :web, %w{bsimmcalc-uat@uat.bsimmcalc.prodexity.com}
role :db, %w{bsimmcalc-uat@uat.bsimmcalc.prodexity.com}
# role :app, %w{deploy@example.com}, my_property: :my_value

# Configuration
# =============
# You can set any configuration variable like in config/deploy.rb
# These variables are then only loaded and set in this stage.
# For available Capistrano configuration variables see the documentation page.
# http://capistranorb.com/documentation/getting-started/configuration/
# Feel free to add new variables to customise your setup.

set :deploy_to, "/var/www/uat.bsimmcalc.prodexity.com/bsimmcalc"

set :ssh_options, {
  user: "bsimmcalc-uat",
  keys: %w(~/.ssh/id_rsa),
  forward_agent: false,
  auth_methods: %w(publickey)
}

set :rails_env, 'production'
