defmodule DatcordWeb.HomeLive do
  use DatcordWeb, :live_view

  def render(assigns) do
    ~H"""
    <div class="px-12 w-72">
      <header class="w-full">
        <div class="flex justify-between items-center w-full">
          <h2>Home</h2>
          <.link navigate={~p"/users/log_out"}>Logout</.link>
        </div>
      </header>
    </div>
    """
  end
end
