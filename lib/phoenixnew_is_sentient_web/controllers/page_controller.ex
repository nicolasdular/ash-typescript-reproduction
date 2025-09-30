defmodule PhoenixnewIsSentientWeb.PageController do
  use PhoenixnewIsSentientWeb, :controller

  def home(conn, _params) do
    render(conn, :home)
  end
end
