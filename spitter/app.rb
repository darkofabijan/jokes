require "sinatra"

set :bind, "0.0.0.0"

get "/" do
  env_var = ENV["test_env_var"]

  "'#{env_var}' 💦"
end
