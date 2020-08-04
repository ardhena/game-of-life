defmodule GameOfLifeWeb.Router do
  use GameOfLifeWeb, :router
  import Phoenix.LiveDashboard.Router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_live_flash
    plug :put_root_layout, {GameOfLifeWeb.LayoutView, :root}
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", GameOfLifeWeb do
    pipe_through :browser

    live "/", GameOfLifeLive
    live_dashboard "/dashboard"
  end
end
