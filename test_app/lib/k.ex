defmodule K do
  use GenServer

  def start_link(_) do
    name = {:via, Registry, {TestApp.ProcessRegistry, "k"}}
    GenServer.start_link(K, [], name: name)
  end

  def get_pid() do
    [{pid, _}] = Registry.lookup(TestApp.ProcessRegistry, "k")
    pid
  end

  def init(_) do
    {:ok, 0}
  end

  def handle_cast(:increment, count) do
    {:noreply, count + 1}
  end

  def handle_call(:count, _, count) do
    {:reply, count, count}
  end
end
