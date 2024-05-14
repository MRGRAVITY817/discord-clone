defmodule Datcord.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      DatcordWeb.Telemetry,
      Datcord.Repo,
      {DNSCluster, query: Application.get_env(:datcord, :dns_cluster_query) || :ignore},
      {Phoenix.PubSub, name: Datcord.PubSub},
      # Start the Finch HTTP client for sending emails
      {Finch, name: Datcord.Finch},
      # Start a worker by calling: Datcord.Worker.start_link(arg)
      # {Datcord.Worker, arg},
      # Start to serve requests, typically the last entry
      DatcordWeb.Endpoint
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Datcord.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    DatcordWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
