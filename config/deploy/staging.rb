set :stage, :staging
set :application, 'archislut.icfdev.ru'
server 'archislut.icfdev.ru', user: 'wwwarchislut', port: 232, roles: %w{web app db}
set :rails_env, :staging
set :branch, proc { ENV['BRANCH'] || `git rev-parse --abbrev-ref HEAD`.chomp }
fetch(:default_env).merge!(rails_env: :staging)
