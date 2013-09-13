class App
  def call(env)
    case env["REQUEST_PATH"]
    when "/"
      RootController.new.show
    when "/posts"
      PostsController.new.index
    else
      [404, {}, []]
    end
  end
end
