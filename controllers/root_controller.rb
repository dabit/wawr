class RootController < Controller
  def show
    @name = params["name"] || "World"
    body = render_with_layout('views/root/show.html.haml')
    headers = { "Content-Length" => body.length.to_s }
    [200, headers, [body]]
  end
end
