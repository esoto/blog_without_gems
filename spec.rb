require 's_tester'
require File.join(File.dirname(__FILE__), "./spec/spec_helper.rb")

Dir['spec/*.rb'].each do |file|
  require File.join(File.dirname(__FILE__), "" + file) unless file=="spec/test_helper.rb"
end
