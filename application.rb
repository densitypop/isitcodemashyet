require 'lib/code_mash_calculator'

class Application

  def initialize
    @calculator = CodeMashCalculator.new(Date.today)
  end

  def call(environment)
    result = if @calculator.is_it_codemash_yet?
               "Yes"
             else
               "No"
             end
    [200, {"Content-Type" => "text/html"}, result]
  end
end
