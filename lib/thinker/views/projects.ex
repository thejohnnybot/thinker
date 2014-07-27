defmodule Thinker.Views.Projects do
  use Thinker.Views
  use Jazz

  def render("index.json", assigns) do
    {:safe, JSON.encode!(%{projects: assigns[:projects]})}
  end
end
