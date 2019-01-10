[{pid, _}] = Registry.lookup(TestApp.ProcessRegistry, "ac")

GenServer.cast(pid, :increment)
GenServer.cast(pid, :increment)
GenServer.cast(pid, :increment)
IO.inspect GenServer.call(pid, :count)
