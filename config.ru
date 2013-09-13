#run -> (env) {
  #puts env
  #[200, {}, []]
#}
#

$: << '.'

require 'app'
require 'controllers/root_controller'
require 'controllers/posts_controller'

run App.new
