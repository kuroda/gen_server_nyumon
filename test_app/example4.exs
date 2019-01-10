require TestApp
require K

name = {:via, Registry, {TestApp.ProcessRegistry, "k"}}
{:ok, _} = GenServer.start_link(K, [], name: name)

[{pid, _}] = Registry.lookup(TestApp.ProcessRegistry, "k")

GenServer.cast(pid, :increment)
GenServer.cast(pid, :increment)
GenServer.cast(pid, :increment)
IO.inspect GenServer.call(pid, :count)
