class App
  def call(env)
    Router.new.call(env)
  end
end
