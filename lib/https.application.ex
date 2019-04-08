defmodule Https.Application do
  @moduledoc """
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  """

  use Application

  def start(_type, _args) do

    cowboy_options = [
      keyfile: Application.get_env(:https, :keyfile),
      certfile: Application.get_env(:https, :certfile),
      otp_app: :https
    ]

    children = [
      Plug.Cowboy.child_spec(
        scheme: :https,
        plug: Https,
        options: cowboy_options
      )
    ]

    opts = [strategy: :one_for_one, name: Https.Application]
    Supervisor.start_link(children, opts)
  end
end
