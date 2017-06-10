require "sinatra"

set :bind, "0.0.0.0"

get "/" do
  output = Net::HTTP.get('spitter.default')

  "I found: #{output}"
end
