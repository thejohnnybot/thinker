defmodule Thinker.Models.Project do
  use Ecto.Model
  alias Thinker.Models.Issue
  use Jazz

  schema "projects" do
    field :name
    field :created_at, :datetime
    has_many :issues, Issue
  end

  defimpl JSON.Encoder, for: __MODULE__ do
    def to_json(projects, opts \\ []) do
      %{id: projects.id, name: projects.name, issues: projects.issues.all}
    end
  end

  defimpl JSON.Encoder, for: Issue do
    def to_json(issues, opts \\ []) do
      %{id: issues.id, title: issues.title}
    end
  end
end
