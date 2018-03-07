defmodule Astroquiz.Repo.Migrations.CreateStars do
  use Ecto.Migration

  def change do
    create table(:stars) do
      add :popular_name, :string
      add :formal_name, :string
      add :constellation, :string
      add :description, :text

      timestamps()
    end

  end
end
