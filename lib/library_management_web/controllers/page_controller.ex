defmodule LibraryManagementWeb.PageController do
  use LibraryManagementWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
