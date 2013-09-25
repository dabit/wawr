$: << '.'

require 'haml'
require 'app'
require 'router'
require 'controller'
require 'controllers/root_controller'
require 'controllers/posts_controller'
require 'model/user'

run App.new
