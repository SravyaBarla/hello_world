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
   auth_methods: %w(ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCuMGF/YE52Z5aC/WbkpEW46yDGBwiXE53L4vTDknftEPnmGI8l3A002gdD2VR9LjhukFmfHQZcyi56ADAclDPNIKCGNfI8sJK1KnONd7+eqXgClqZp6TKRvnDkQGutgcBO9ZUFqNiBTB8IG1kht/FCJVtkcQ3kitEbaVMGY3Dmv5X2HojhBMX4afgEOzW2hoLzrZAqyq7SlFSRedCJ5+UTKP0Fv7M+hpkGSjTh1uVV8ftwHNz1YTK9KWZbHyOO1KH6crbiVvYh0kgBdXwoNE8b2d/Pp0uS90XwJ2bWSdJnPbLLhWHQBdWMe0HqT4yMEZZaH5EEndCRXXiULM3RW7u5hfLftW7l3ml1rJ3Ojs/O8cRtmiC9KMBPPjO26EqFhRrxktVxJkleBwwWd8dTi/uF+pv6T50sSKUFJICYCHqBdtWHcWC7e9whc5EAzjIEdd5bUWS9z0B6Jg87wgXWwFLZAESNH9PKCGPmcvJifg7nlk269wrtLejY/oE6/TmLJRU= sai sravya@LAPTOP-824UOCAT)
 }
