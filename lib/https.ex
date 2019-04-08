defmodule Https do
  @moduledoc """
  # Https package
  XXX
  """

  use Plug.Router
  plug Plug.Logger, log: :debug
  plug :match
  plug :dispatch

  match _ do
    send_resp(conn, 200, "Is https working?")
  end
end
