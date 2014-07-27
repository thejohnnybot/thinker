defmodule Thinker.Repo.Migrations.CreateProjects do
  use Ecto.Migration

  def up do
    "CREATE TABLE IF NOT EXISTS projects(id serial primary key, name text, created_at timestamp)"
  end

  def down do
    "DROP TABLE projects"
  end
end
