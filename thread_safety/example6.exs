defmodule K do
  use GenServer

  def init(_) do
    state = %{count: 0, done: false}

    {:ok, state}
  end

  def handle_cast(:increment, state) do
    new_state =
      if state.done do
        state
      else
        %{count: state.count + 1, done: true}
      end

    :timer.sleep(1000)
    IO.inspect :increment

    {:noreply, new_state}
  end

  def handle_call(:count, _, state) do
    {:reply, state.count, state}
  end
end

{:ok, pid} = GenServer.start_link(K, [])
GenServer.cast(pid, :increment)
GenServer.cast(pid, :increment)
GenServer.cast(pid, :increment)

IO.inspect "A"
IO.inspect GenServer.call(pid, :count)
