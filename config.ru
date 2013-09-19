#run -> (env) {
  #puts env
  #[200, {}, []]
#}
#

$: << '.'

require 'haml'
require 'app'
require 'router'
require 'controller'
require 'controllers/root_controller'
require 'controllers/posts_controller'

run App.new
