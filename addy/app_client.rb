require 'grpc'
require_relative 'addy_services_pb'

def main
  stub = Addy::Adder::Stub.new('localhost:50051', :this_channel_is_insecure)

  sum = stub.add(Addy::NumbersToAdd.new(:a => 1, :b => 2)).result
  p "Sum: #{sum}"
end

main
