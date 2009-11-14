$:.unshift(File.dirname(__FILE__)) unless
  $:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))

require 'appscript'
require 'activesupport'
require 'ruby-debug'
Dir["#{File.dirname(__FILE__)}/active_mac/*.rb"].sort.each { |lib| require lib }

module ActiveMac
  VERSION = '0.0.1'
end

def app(application = "iTunes")
  ActiveMac::App.find(application)
end