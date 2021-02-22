defmodule PhoenixAppWeb.WelcomeController do
  use PhoenixAppWeb, :controller

  def index(connection, _params) do
    text(connection, "Welcome to my first phoenix API!")
  end

end
