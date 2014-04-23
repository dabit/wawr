class App
  def self.call(env)
    path = env["REQUEST_PATH"]
    case path
    when "/"
      RootController.new(env).show
    else
      body = "Not Found"
      [404, {}, [body]]
    end
  end
end
