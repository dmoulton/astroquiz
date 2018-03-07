defmodule Astroquiz.Quizzes.Star do
  use Ecto.Schema
  import Ecto.Changeset
  alias Astroquiz.Quizzes.Star


  schema "stars" do
    field :constellation, :string
    field :description, :string
    field :formal_name, :string
    field :popular_name, :string

    timestamps()
  end

  @doc false
  def changeset(%Star{} = star, attrs \\ %{}) do
    star
    |> cast(attrs, [:popular_name, :formal_name, :constellation, :description])
    |> validate_required([:popular_name, :formal_name, :constellation])
  end
end
