require 'dm-core'
DataMapper.setup(:default, "sqlite3://#{root}/db/development.sqlite3")
