class Application

  def call(environment)
    [200, {"Content-Type" => "text/html"}, "Hello world"]
  end
end
