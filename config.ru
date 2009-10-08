require 'sinatra/base'
$LOAD_PATH.unshift(File.expand_path(File.dirname(__FILE__) + '/lib'))

Sinatra::Base.set :root, File.expand_path(File.dirname(__FILE__))
Sinatra::Base.set :static, true
require 'save_link/application'

run SaveLink::Application
