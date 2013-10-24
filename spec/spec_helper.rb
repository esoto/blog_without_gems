require 'webrick'

class Object
  def get route
    Net::HTTP.get_response('localhost', route, 7000)
  end
end

Dir['lib/*.rb', 'config/*.rb'].each do |file|
  require File.join(File.dirname(__FILE__), "../" + file)
end
