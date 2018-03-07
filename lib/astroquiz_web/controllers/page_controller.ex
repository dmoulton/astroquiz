defmodule AstroquizWeb.PageController do
  use AstroquizWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
