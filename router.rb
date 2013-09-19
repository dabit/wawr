class Router
  def call(env)
    case env["REQUEST_PATH"]
    when /\//
      RootController.new(env).show
    when /^\/posts/
      PostsController.new(env).index
    else
      [404, {}, []]
    end
  end
end
