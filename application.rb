require 'lib/code_mash_calculator'
require 'lib/result'
require 'mustache'


class Application

  def call(environment)
    [200, {"Content-Type" => "text/html"}, Result.render]
  end
end
