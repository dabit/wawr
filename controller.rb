class Controller
  def params
    Rack::Utils.parse_nested_query(env["QUERY_STRING"])
  end

  def render(template_path, context = self)
    template = File.open(template_path, "r").read
    Haml::Engine.new(template).render(context)
  end

  def render_with_layout(template_path, context = self)
    layout = File.open('views/layouts/app.html.haml', 'r').read
    Haml::Engine.new(layout).render(context) do
      render(template_path, context)
    end
  end

  attr_accessor :env

  def initialize(env)
    self.env = env
  end
end
