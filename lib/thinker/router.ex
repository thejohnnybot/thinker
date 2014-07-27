defmodule Thinker.Router do
  use Phoenix.Router

  plug Plug.Static, at: "/static", from: :thinker


  resources "projects", Thinker.Controllers.Projects
end
