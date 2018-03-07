defmodule Astroquiz.QuizzesTest do
  use Astroquiz.DataCase

  alias Astroquiz.Quizzes

  describe "stars" do
    alias Astroquiz.Quizzes.Star

    @valid_attrs %{constellation: "some constellation", description: "some description", formal_name: "some formal_name", popular_name: "some popular_name"}
    @update_attrs %{constellation: "some updated constellation", description: "some updated description", formal_name: "some updated formal_name", popular_name: "some updated popular_name"}
    @invalid_attrs %{constellation: nil, description: nil, formal_name: nil, popular_name: nil}

    def star_fixture(attrs \\ %{}) do
      {:ok, star} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Quizzes.create_star()

      star
    end

    test "list_stars/0 returns all stars" do
      star = star_fixture()
      assert Quizzes.list_stars() == [star]
    end

    test "get_star!/1 returns the star with given id" do
      star = star_fixture()
      assert Quizzes.get_star!(star.id) == star
    end

    test "create_star/1 with valid data creates a star" do
      assert {:ok, %Star{} = star} = Quizzes.create_star(@valid_attrs)
      assert star.constellation == "some constellation"
      assert star.description == "some description"
      assert star.formal_name == "some formal_name"
      assert star.popular_name == "some popular_name"
    end

    test "create_star/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Quizzes.create_star(@invalid_attrs)
    end

    test "update_star/2 with valid data updates the star" do
      star = star_fixture()
      assert {:ok, star} = Quizzes.update_star(star, @update_attrs)
      assert %Star{} = star
      assert star.constellation == "some updated constellation"
      assert star.description == "some updated description"
      assert star.formal_name == "some updated formal_name"
      assert star.popular_name == "some updated popular_name"
    end

    test "update_star/2 with invalid data returns error changeset" do
      star = star_fixture()
      assert {:error, %Ecto.Changeset{}} = Quizzes.update_star(star, @invalid_attrs)
      assert star == Quizzes.get_star!(star.id)
    end

    test "delete_star/1 deletes the star" do
      star = star_fixture()
      assert {:ok, %Star{}} = Quizzes.delete_star(star)
      assert_raise Ecto.NoResultsError, fn -> Quizzes.get_star!(star.id) end
    end

    test "change_star/1 returns a star changeset" do
      star = star_fixture()
      assert %Ecto.Changeset{} = Quizzes.change_star(star)
    end
  end
end
