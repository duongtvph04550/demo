set :stage, :staging
set :rails_env, :production
set :user, :deploy

set :branch, :master

server "192.168.1.7", user: fetch(:user), roles: %w[app db]

set :ssh_options,
    keys: %w[~/.ssh/id_rsa],
    forward_agent: true,
    user: fetch(:user)
