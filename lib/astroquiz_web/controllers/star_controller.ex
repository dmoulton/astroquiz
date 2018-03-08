defmodule AstroquizWeb.StarController do
  use AstroquizWeb, :controller

  alias Astroquiz.Quizzes
  alias Astroquiz.Quizzes.Star
  alias Astroquiz.Repo

  def index(conn, _params) do
    stars = Quizzes.list_stars()
    render(conn, "index.html", stars: stars)
  end

  def new(conn, _params) do
    changeset = Quizzes.change_star(%Star{})
    render(conn, "new.html", changeset: changeset)
  end

  def create(conn, %{"star" => star_params}) do
    case Quizzes.create_star(star_params) do
      {:ok, star} ->
        conn
        |> put_flash(:info, "Star created successfully.")
        |> redirect(to: star_path(conn, :show, star))
      {:error, %Ecto.Changeset{} = changeset} ->
        render(conn, "new.html", changeset: changeset)
    end
  end

  def show(conn, %{"id" => id}) do
    star = Quizzes.get_star!(id)
    render(conn, "show.html", star: star)
  end

  def edit(conn, %{"id" => id}) do
    star = Quizzes.get_star!(id)
    changeset = Quizzes.change_star(star)
    render(conn, "edit.html", star: star, changeset: changeset)
  end

  def update(conn, %{"id" => id, "star" => star_params}) do
    star = Quizzes.get_star!(id)

    case Quizzes.update_star(star, star_params) do
      {:ok, star} ->
        conn
        |> put_flash(:info, "Star updated successfully.")
        |> redirect(to: star_path(conn, :show, star))
      {:error, %Ecto.Changeset{} = changeset} ->
        render(conn, "edit.html", star: star, changeset: changeset)
    end
  end

  def delete(conn, %{"id" => id}) do
    star = Quizzes.get_star!(id)
    {:ok, _star} = Quizzes.delete_star(star)

    conn
    |> put_flash(:info, "Star deleted successfully.")
    |> redirect(to: star_path(conn, :index))
  end

  def quiz_question(conn, _params) do
    constellations = Quizzes.list_stars()
      |> Enum.map(fn(x) -> x.constellation end)
      |> Enum.dedup()

    star_id = :rand.uniform(Enum.count(constellations))
    star = Repo.get!(Star, star_id)
    changeset = Star.changeset(%Star{})

    render(conn, "question.html", star: star, changeset: changeset, constellations: constellations)
  end

  def quiz_answer(conn, %{"star" => star_params}) do
    %{"constellation" => constellation, "id" => id} = star_params
    star = Quizzes.get_star!(id)

    case star.constellation do
      ^constellation -> 
        response = "CORRECT!"
      _ ->
        response = "INCORRECT"
    end

    render(conn, "answer.html", star: star, constellation: constellation, response: response)
  end
end
