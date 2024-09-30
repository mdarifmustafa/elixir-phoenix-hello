defmodule HelloWeb.GreetingsController do
  use HelloWeb, :controller

  def index(conn, _params) do
    conn
    |> put_resp_content_type("text/html", "utf-8")
    |> put_flash(:info, "Welcome back!")
    |> assign(:var, "how are you?")
    |> render("index.html", layout: false)
  end

  def show(conn, %{"messenger" => messenger}) do
    conn
    |> put_flash(:error, "Something went wrong!")
    |> render("show.html", messenger: messenger)
  end
end
