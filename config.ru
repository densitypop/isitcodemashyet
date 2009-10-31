$: << File.dirname(__FILE__)
require 'gems/environment'
require 'rack'
require 'application'

run Application.new
