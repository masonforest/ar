require 'far'
require 'bundler'
require 'pp'
Bundler.require(:default, :test)

Dir[File.dirname(__FILE__) + '/support/**/*.rb'].each {|file| require file }
