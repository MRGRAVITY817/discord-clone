defmodule DatcordWeb.CustomComponents do
  use Phoenix.Component
  import DatcordWeb.CoreComponents

  attr :navigate, :any, required: true

  def back_button(assigns) do
    ~H"""
    <.link href={@navigate}>
      <.icon name="hero-arrow-left-solid" class="text-black size-6" />
    </.link>
    """
  end
end
