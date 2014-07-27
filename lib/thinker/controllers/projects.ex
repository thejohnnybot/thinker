defmodule Thinker.Controllers.Projects do
  use Phoenix.Controller
  import Ecto.Query
  alias Thinker.Repo
  alias Thinker.Models.Project

  def index(conn, _params) do
    query = from p in Project, preload: [:issues]
    projects = Repo.all(query)
    render conn, "index", projects: projects
  end
end
