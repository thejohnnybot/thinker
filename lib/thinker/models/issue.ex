defmodule Thinker.Models.Issue do
  use Ecto.Model
  alias Thinker.Models.Project

  schema "issues" do
    field :title
    belongs_to :project, Project
  end
end
