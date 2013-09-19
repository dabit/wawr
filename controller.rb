class Controller
  attr_accessor :env

  def initialize(env)
    self.env = env
  end

  def render_template(view_path, context: self)
    template = load_template_file(view_path)
    Haml::Engine.new(template).render(context)
  end

  def render_with_layout(view_path, layout: "", context: self)
    layout_template = load_template_file(layout)
    Haml::Engine.new(layout_template).render(self) do
      render_template(view_path)
    end
  end

  def load_template_file(path)
    File.open(File.expand_path(path), 'r').read
  end

  def params
    @params ||= Rack::Utils.parse_nested_query(env["QUERY_STRING"])
  end
end
