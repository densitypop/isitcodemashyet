require 'mustache'

class Result < Mustache

  self.template_file = File.dirname(__FILE__) + '/../views/result.html'

  def initialize
    @calculator = CodeMashCalculator.new(Date.today)
  end

  def result
    if @calculator.is_it_codemash_yet?
       "Yes"
     else
       link_to_register("No")
     end
  end

  def link_to_register(text)
    %(<a href="http://www.codemash.org/Register" title="Register Now! What are you waiting for? Don't you realize how awesome this conference is?">%s</a>) % text
  end
end
