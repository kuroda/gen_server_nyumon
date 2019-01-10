defmodule TestApp do
  use Application

  def start(_type, _args) do
    IO.puts "Starting"
    children = [
      {Registry, [keys: :unique, name: TestApp.ProcessRegistry]},
      {AutoCounter, []}
    ]
    Supervisor.start_link(children, strategy: :one_for_one)
  end
end
