require 'grpc'
require_relative './addy_services_pb'

class AdderServer < Addy::Adder::Service

  def add(numbers_to_add, _unused_call)
    p "Got request"
    c = numbers_to_add.a + numbers_to_add.b

    p "Result is ready"
    Addy::Sum.new(:result => c)
  end

end

def main
  s = GRPC::RpcServer.new
  s.add_http2_port('0.0.0.0:50051', :this_port_is_insecure)
  s.handle(AdderServer)
  s.run_till_terminated
end

main


