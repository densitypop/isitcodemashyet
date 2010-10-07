CODEMASH_DATE = (Date.parse("1/12/2011")..Date.parse("1/14/2011"))

class CodeMashCalculator

  def initialize(comparison_date)
    @comparison_date = Date.parse(comparison_date.to_s)
    @end_date = CODEMASH_DATE
  end

  def days_until_codemash
    CODEMASH_DATE.first - @comparison_date
  end

  def is_it_codemash_yet?
    CODEMASH_DATE.include?(@comparison_date)
  end
end
