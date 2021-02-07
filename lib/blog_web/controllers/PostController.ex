defmodule BlogWeb.PostController do
  use BlogWeb, :controller
  alias Blog.{Posts, Posts.Post}

  def create(conn, %{ "post" => post}) do
    {:ok, %Post{} = post} = Posts.create_post(post)

    conn
    |> put_status(:created)
    |> render("show.json", post: post)
  end
end
