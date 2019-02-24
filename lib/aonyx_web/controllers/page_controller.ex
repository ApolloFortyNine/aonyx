defmodule AonyxWeb.PageController do
  use AonyxWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
