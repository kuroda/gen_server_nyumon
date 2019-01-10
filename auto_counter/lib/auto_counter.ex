defmodule AutoCounter do
  use GenServer

  def start_link(_) do
    name = {:via, Registry, {TestApp.ProcessRegistry, "ac"}}
    GenServer.start_link(AutoCounter, [], name: name)
  end

  def init(_) do
    Process.send_after(self(), :auto_increment, 1_000)
    {:ok, 0}
  end

  def handle_cast(:increment, count) do
    {:noreply, count + 1}
  end

  def handle_call(:count, _, count) do
    {:reply, count, count}
  end

  def handle_info(:auto_increment, count) do
    Process.send_after(self(), :auto_increment, 1_000)
    {:noreply, count + 1}
  end
end
