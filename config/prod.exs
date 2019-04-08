use Mix.Config

config :https,
  certfile: "/home/deploy/letsencrypt/fullchain.pem",
  keyfile: "/home/deploy/letsencrypt/privkey.pem"
