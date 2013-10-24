require 'webrick'

Dir['lib/*.rb'].each do |file|
  require File.join(File.dirname(__FILE__), file)
end

include WEBrick

root_directory = Dir::pwd
port = 7000

puts "Server access through: http://localhost:#{port}"

server = HTTPServer.new(:Port => port, :DocumentRoot => root_directory)
server.mount "/posts", PostsController
trap("INT") {server.shutdown}
server.start
