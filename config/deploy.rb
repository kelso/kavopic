# config valid for current version and patch releases of Capistrano
lock "~> 3.11.1"

set :log_level, :info

set :application, 'kavopic'

set :rbenv_type, :user
set :rbenv_ruby, '2.6.2'

set :keep_releases, 5
set :use_sudo, false
set :user, "ubuntu"

set :rbenv_prefix, "RBENV_ROOT=#{fetch(:rbenv_path)} RBENV_VERSION=#{fetch(:rbenv_ruby)} #{fetch(:rbenv_path)}/bin/rbenv exec"
set :rbenv_map_bins, %w{rake gem bundle ruby rails sidekiq sidekiqctl puma pumactl}
set :rbenv_roles, :all # default value

set :linked_dirs, fetch(:linked_dirs, []).push('log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', 'public/system', 'public/uploads')
# set :linked_files, fetch(:linked_files, []).push('config/database.yml')

set :repo_url, "git@github.com:kelso/kavopic.git"
set :deploy_to, "/home/appuser/www/#{fetch(:application)}"

# TODO enable?
# before "deploy:check", "puma:nginx_config"
