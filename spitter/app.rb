require "sinatra"

set :bind, "0.0.0.0"

get "/" do
  # test
  env_var = ENV["test_env_var"]
  db_pass = ENV["DB_PASS"]

  "'#{env_var}' 💦" p.s. DB_PASS: #{db_pass}"
end
