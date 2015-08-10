server '192.168.111.10', user: 'app', roles: %w{app web}

role :app, %w{app@192.168.111.10}
role :web, %w{app@192.168.111.10}
role :db,  %w{app@192.168.111.10}

set :ssh_options, {
  keys: %w(~/.ssh/id_rsa),
  forward_agent: false,
  auth_methods: %w(publickey)
}
