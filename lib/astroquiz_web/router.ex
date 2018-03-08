defmodule AstroquizWeb.Router do
  use AstroquizWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", AstroquizWeb do
    pipe_through :browser # Use the default browser stack

    get "/", StarController, :quiz_question
    get "/stars/question", StarController, :quiz_question
    post "/stars/answer", StarController, :quiz_answer
    resources "/stars", StarController
  end

  # Other scopes may use custom stacks.
  # scope "/api", AstroquizWeb do
  #   pipe_through :api
  # end
end
