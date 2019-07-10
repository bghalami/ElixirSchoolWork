defmodule GenstageEx.Application do
  @moduledoc false

  use Application

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    children = [
      worker(GenstageEx.Producer, [0]),
      worker(GenstageEx.ProducerConsumer, []),
      worker(GenstageEx.Consumer, [], id: 1),
      worker(GenstageEx.Consumer, [], id: 2)
    ]

    opts = [strategy: :one_for_one, name: GenstageEx.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
