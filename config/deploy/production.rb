# server-based syntax
# ======================
# Defines a single server with a list of roles and multiple properties.
# You can define all roles on a single server, or split them:

# server "example.com", user: "deploy", roles: %w{app db web}, my_property: :my_value
# server "example.com", user: "deploy", roles: %w{app web}, other_property: :other_value
# server "db.example.com", user: "deploy", roles: %w{db}



# role-based syntax
# ==================

# Defines a role with one or multiple servers. The primary server in each
# group is considered to be the first unless any hosts have the primary
# property set. Specify the username and a domain or IP for the server.
# Don't use `:all`, it's a meta role.

# role :app, %w{deploy@example.com}, my_property: :my_value
# role :web, %w{user1@primary.com user2@additional.com}, other_property: :other_value
# role :db,  %w{deploy@example.com}



# Configuration
# =============
# You can set any configuration variable like in config/deploy.rb
# These variables are then only loaded and set in this stage.
# For available Capistrano configuration variables see the documentation page.
# http://capistranorb.com/documentation/getting-started/configuration/
# Feel free to add new variables to customise your setup.



# Custom SSH Options
# ==================
# You may pass any option but keep in mind that net/ssh understands a
# limited set of options, consult the Net::SSH documentation.
# http://net-ssh.github.io/net-ssh/classes/Net/SSH.html#method-c-start
#
# Global options
# --------------
#  set :ssh_options, {
#    keys: %w(/home/user_name/.ssh/id_rsa),
#    forward_agent: false,
#    auth_methods: %w(password)
#  }
#
# The server-based syntax can be used to override options:
# ------------------------------------
# server "example.com",
#   user: "user_name",
#   roles: %w{web app},
#   ssh_options: {
#     user: "user_name", # overrides user setting above
#     keys: %w(/home/user_name/.ssh/id_rsa),
#     forward_agent: false,
#     auth_methods: %w(publickey password)
#     # password: "please use keys"
#   }
role :app, %w{deploy_user@ec2-3-35-19-213.ap-northeast-2.compute.amazonaws.com}
role :web, %w{deploy_user@ec2-3-35-19-213.ap-northeast-2.compute.amazonaws.com}
role :db,  %w{deploy_user@ec2-3-35-19-213.ap-northeast-2.compute.amazonaws.com}
set :ssh_options, {
   keys: %w(C:\Users\Sai Sravya\Downloads\example-devops.pem),
   forward_agent: false,
   auth_methods: %w(ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCK4n5h/Wl/DtrraXErmM94l1VZ6KtpMHJ9WhVV3W6C3b/AUaRE5sFhFdHFsr+0wDDRAM85AWaNM/uWA1BUe88T2a9RKQ61mkEnii+FXQAQsxHSIWIlYm2YNXU9wDwPwtXk9NSfKX24tktUVl3izZdnT4Pw3OsepPvd26flHFdMweQ4DhfVPhjNpK3kTgCa7gXi6MZjaL1U4Q9qlQm+BYYzEwuyZ7dA1tn7UACe3qcfJx3TwNkn97tCXjyNLy+zTGj9qIV39Qvy+kbSSeSjukGFFl0nBf4Rp86SJXhwHNw83flP0J1s4tUREkJJGLxz1AzLfGJmJ3IqyY6QGi0fBW9f example-devops)
 }
