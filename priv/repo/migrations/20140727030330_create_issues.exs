defmodule Thinker.Repo.Migrations.CreateIssues do
  use Ecto.Migration

  def up do
    "CREATE TABLE IF NOT EXISTS issues(id serial primary key, title text, project_id int references projects(id))"
  end

  def down do
    "DROP TABLE issues"
  end
end
