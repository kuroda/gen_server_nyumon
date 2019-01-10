defmodule TestApp do
  use Application

  def start(_type, _args) do
    IO.puts "Starting"
    children = [
      {Registry, [keys: :unique, name: TestApp.ProcessRegistry]},
      %{id: K, start: {K, :start_link, []}}
    ]
    Supervisor.start_link(children, strategy: :one_for_one)
  end
end
