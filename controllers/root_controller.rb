class RootController < Controller
  def show
    @name = params["name"]
    response = render_with_layout('views/root/show.html.haml',
                                  layout: 'views/layout/application.html.haml',
                                  context: binding)

    [200, {"Content-Length" => response.length.to_s}, [response]]
  end
end
