defmodule DatcordWeb.UserLoginLive do
  use DatcordWeb, :live_view

  def render(assigns) do
    ~H"""
    <div class="bg-brand h-screen flex justify-center items-center">
      <div class="bg-gray-700 w-[800px] px-24 py-20 rounded-md flex flex-col items-center justify-start">
        <h1 class="font-bold text-3xl text-white">
          Welcome back!
        </h1>
        <p class="text-gray-300 pt-6 text-lg">
          We're so excited to see you again!
        </p>

        <.form for={@form} id="login_form" phx-submit="login" phx-change="validate" class="w-full">
          <div class="mt-10 space-y-8">
            <.input field={@form[:email]} type="email" label="EMAIL" />
            <div>
              <.input field={@form[:password]} type="password" label="PASSWORD" />
              <div class="mt-2">
                <.link href={~p"/users/reset_password"} class="text-blue-400 font-bold">
                  Forgot your password?
                </.link>
              </div>
            </div>
          </div>

          <div class="mt-10">
            <.button
              phx-disable-with="Logging in..."
              class="w-full bg-brand hover:bg-brand/80 text-white"
            >
              Log in
            </.button>
            <p class="text-zinc-400 mt-2">
              Need an account?
              <span class="pl-2">
                <.link href={~p"/users/register"} class="text-blue-400 font-bold">Register</.link>
              </span>
            </p>
          </div>
        </.form>
      </div>
    </div>
    """
  end

  def mount(_params, _session, socket) do
    email = Phoenix.Flash.get(socket.assigns.flash, :email)
    form = to_form(%{"email" => email}, as: "user")
    {:ok, assign(socket, form: form), temporary_assigns: [form: form]}
  end

  def handle_event("validate", unsigned_params, socket) do
    {:noreply, socket}
  end
end
