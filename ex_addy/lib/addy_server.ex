# Generated by `mix grpc.gen.server`.
# Please implement all functions.
defmodule Addy.Adder.Server do
  use GRPC.Server, service: Addy.Adder.Service

  def add(numbers_to_add, _stream) do
    c = numbers_to_add.a + numbers_to_add.b

    Addy.Sum.new(result: c)
  end

end