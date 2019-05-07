defmodule HordeExample do
  @moduledoc """
  Documentation for HordeExample.
  """

  def add_child_to_supervisor() do
    Horde.Supervisor.start_child(MyApp.DistributedSupervisor, %{id: :gen_server, start: {GenServer, :start_link, []}})
  end
end
