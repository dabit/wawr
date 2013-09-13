class RootController
  def show
    response = "<html><body><h1>Hello World</h1></body></html>"

    [200, {"Content-Length" => response.length.to_s}, [response]]
  end
end
