class PostsController
  def index
    response = "<html><body><h1>Posts</h1></body></html>"

    [200, {"Content-Length" => response.length.to_s}, [response]]
  end
end
