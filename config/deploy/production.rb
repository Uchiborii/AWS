server '18.177.180.77', user: 'app', roles: %w{app db web}
set :ssh_options, keys: '/Users/uchiborieri/.ssh/id_rsa'