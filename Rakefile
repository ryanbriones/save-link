def root
  File.expand_path(File.dirname(__FILE__))
end

namespace :db do
  task :auto_migrate do
    environment = ENV['SL_ENV'] || 'development'
    load File.join(root, 'config', "#{environment}.rb")
    require File.join(root, 'lib/save_link/link')
    p DataMapper.auto_migrate!
  end
end
