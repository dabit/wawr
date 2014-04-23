class RootController < Controller
  def show
    @name = params["name"] || "World"
    body = render_with_layout('views/root/show.html.haml')
    [200, {}, [body]]
  end
end
