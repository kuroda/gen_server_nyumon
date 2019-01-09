defmodule K do
  use GenServer

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

{:ok, pid} = GenServer.start_link(K, [])
GenServer.cast(pid, :increment)
GenServer.cast(pid, :increment)
GenServer.cast(pid, :increment)
IO.inspect GenServer.call(pid, :count)
