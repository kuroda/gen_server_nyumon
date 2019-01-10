require TestApp
require K

[{pid, _}] = Registry.lookup(TestApp.ProcessRegistry, "k")

GenServer.cast(pid, :increment)
GenServer.cast(pid, :increment)
GenServer.cast(pid, :increment)
IO.inspect GenServer.call(pid, :count)
