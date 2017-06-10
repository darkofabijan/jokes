require "sinatra"
require 'net/http'

set :bind, "0.0.0.0"

get "/" do
  uri = URI("http://spitter.default:4567")
  output = Net::HTTP.get(uri)

  "I found: #{output}"
end
