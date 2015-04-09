lock '3.2.1'

set :application, 'pabo-stenden2'
set :repo_url, 'git@github.com:cvandermeer/pabo-stenden.git'
set :deploy_to, '/u/apps/pabo-stenden2_production'
set :ssh_options, {
  forward_agent: true
}
set :pty, true
set :branch, ENV.fetch('branch', 'master2')
set :linked_files, %w{config/database.yml .rbenv-vars .ruby-version}
set :linked_dirs, %w{bin log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system}
set :default_env, { path: "/opt/rbenv/shims:$PATH" }
set :keep_releases, 5
namespace :deploy do
  desc 'Restart application'
  task :restart do
    on roles(:app), in: :sequence, wait: 5 do
      execute :touch, release_path.join('tmp/restart.txt')
    end
  end
  after :publishing, :restart
end
