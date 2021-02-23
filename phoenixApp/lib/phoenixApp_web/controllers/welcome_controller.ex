defmodule PhoenixAppWeb.WelcomeController do
  use PhoenixAppWeb, :controller

  def index(connection, %{"filename" => filename}) do
    text(connection, "Welcome to my first phoenix API!")
  end

end
