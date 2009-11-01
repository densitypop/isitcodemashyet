$: << File.dirname(__FILE__)
require 'gems/environment'
require 'rack'
require 'application'

use Rack::Static, :urls => ["/stylesheets", "/images"], :root => "public"
run Application.new
