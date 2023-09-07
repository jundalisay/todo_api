defmodule TodoapiWeb.DefaultController do
  use TodoapiWeb, :controller

  def index(conn, _params) do
    text conn, "The TOdo API is LIVE - #{Mix.env()}"
  end

end
