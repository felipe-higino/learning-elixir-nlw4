defmodule PhoenixAppWeb.WelcomeController do
  use PhoenixAppWeb, :controller

  def index(connection, %{"filename" => filename}) do
    filename
    |> PhoenixApp.Mycsv.sum_from_csv()
    |> handle_file(connection)
  end

  def handle_file({:ok, %{result: sum}}, connection) do
    connection
    |> put_status(:ok)
    |> json(%{
        message: "Welcome to my first API!",
        result: sum
      })
    end

  def handle_file({:error, reason}, connection) do
    connection
    |> put_status(:bad_request)
    |> json(reason)
  end
end
