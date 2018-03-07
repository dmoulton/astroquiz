defmodule AstroquizWeb.StarControllerTest do
  use AstroquizWeb.ConnCase

  alias Astroquiz.Quizzes

  @create_attrs %{constellation: "some constellation", description: "some description", formal_name: "some formal_name", popular_name: "some popular_name"}
  @update_attrs %{constellation: "some updated constellation", description: "some updated description", formal_name: "some updated formal_name", popular_name: "some updated popular_name"}
  @invalid_attrs %{constellation: nil, description: nil, formal_name: nil, popular_name: nil}

  def fixture(:star) do
    {:ok, star} = Quizzes.create_star(@create_attrs)
    star
  end

  describe "index" do
    test "lists all stars", %{conn: conn} do
      conn = get conn, star_path(conn, :index)
      assert html_response(conn, 200) =~ "Listing Stars"
    end
  end

  describe "new star" do
    test "renders form", %{conn: conn} do
      conn = get conn, star_path(conn, :new)
      assert html_response(conn, 200) =~ "New Star"
    end
  end

  describe "create star" do
    test "redirects to show when data is valid", %{conn: conn} do
      conn = post conn, star_path(conn, :create), star: @create_attrs

      assert %{id: id} = redirected_params(conn)
      assert redirected_to(conn) == star_path(conn, :show, id)

      conn = get conn, star_path(conn, :show, id)
      assert html_response(conn, 200) =~ "Show Star"
    end

    test "renders errors when data is invalid", %{conn: conn} do
      conn = post conn, star_path(conn, :create), star: @invalid_attrs
      assert html_response(conn, 200) =~ "New Star"
    end
  end

  describe "edit star" do
    setup [:create_star]

    test "renders form for editing chosen star", %{conn: conn, star: star} do
      conn = get conn, star_path(conn, :edit, star)
      assert html_response(conn, 200) =~ "Edit Star"
    end
  end

  describe "update star" do
    setup [:create_star]

    test "redirects when data is valid", %{conn: conn, star: star} do
      conn = put conn, star_path(conn, :update, star), star: @update_attrs
      assert redirected_to(conn) == star_path(conn, :show, star)

      conn = get conn, star_path(conn, :show, star)
      assert html_response(conn, 200) =~ "some updated constellation"
    end

    test "renders errors when data is invalid", %{conn: conn, star: star} do
      conn = put conn, star_path(conn, :update, star), star: @invalid_attrs
      assert html_response(conn, 200) =~ "Edit Star"
    end
  end

  describe "delete star" do
    setup [:create_star]

    test "deletes chosen star", %{conn: conn, star: star} do
      conn = delete conn, star_path(conn, :delete, star)
      assert redirected_to(conn) == star_path(conn, :index)
      assert_error_sent 404, fn ->
        get conn, star_path(conn, :show, star)
      end
    end
  end

  defp create_star(_) do
    star = fixture(:star)
    {:ok, star: star}
  end
end
