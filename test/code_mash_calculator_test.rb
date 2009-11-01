require File.dirname(__FILE__) + '/test_helper'
require 'code_mash_calculator'

class CodeMashCalculatorTest < Test::Unit::TestCase

  context "The CodeMash Calculator" do
    context "when it's NOT CodeMash" do

      setup do
        @calculator = CodeMashCalculator.new('11/1/2009')
      end

      should "return false when asked if it's CodeMash yet" do
        assert !@calculator.is_it_codemash_yet?
      end

    end

    context "when it IS CodeMash" do
      setup do
        @calculator = CodeMashCalculator.new('1/13/2010')
      end

      should "return true when asked if it's CodeMash yet" do
        assert @calculator.is_it_codemash_yet?
      end
    end
  end
end
