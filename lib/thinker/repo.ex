defmodule Thinker.Repo do
  use Ecto.Repo, adapter: Ecto.Adapters.Postgres

  def conf do
    parse_url "ecto://test@localhost/thinker"
  end

  def priv do
    app_dir(:thinker, "priv/repo")
  end
end
