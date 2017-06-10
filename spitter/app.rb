require "sinatra"

set :bind, "0.0.0.0"

get "/" do
  # test
  env_var = ENV["test_env_var"]

  "'#{env_var}' 💦"
end
