defmodule Thinker.Supervisor do
  use Supervisor

  def start_link do
    :supervisor.start_link(__MODULE__, [])
  end

  def init([]) do
    children = [worker(Thinker.Repo, [])]

    # See http://elixir-lang.org/docs/stable/Supervisor.Behaviour.html
    # for other strategies and supported options
    supervise(children, strategy: :one_for_one)
  end
end
