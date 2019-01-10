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
