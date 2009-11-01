CODEMASH_DATE = (Date.parse("1/13/2010")..Date.parse("1/15/2010"))

class CodeMashCalculator

  def initialize(comparison_date)
    @comparison_date = Date.parse(comparison_date.to_s)
    @end_date = CODEMASH_DATE
  end

  def is_it_codemash_yet?
    CODEMASH_DATE.include?(@comparison_date)
  end
end
