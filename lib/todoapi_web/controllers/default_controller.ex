defmodule TodoapiWeb.DefaultController do
  use TodoapiWeb, :controller

  def index(conn, _params) do
    text conn, "The Todo (Guardian) API is LIVE - #{Mix.env()}"
  end

end
