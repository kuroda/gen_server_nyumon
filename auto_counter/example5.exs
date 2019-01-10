pid = AutoCounter.get_pid()

GenServer.cast(pid, :increment)
GenServer.cast(pid, :increment)
GenServer.cast(pid, :increment)
IO.inspect GenServer.call(pid, :count)
