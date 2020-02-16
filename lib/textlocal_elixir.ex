defmodule TextlocalElixir do
  @moduledoc """
  Documentation for TextlocalElixir.
  """

  @doc """
  Hello world.

  ## Examples

      iex> TextlocalElixir.hello()
      :world

  """
  @app :textlocal_elixir
  @send_url "https://api.textlocal.in/send/?"

  def send_message(number,text) do
      api_key = Application.get_env(@app, :api_key)
      sender = Application.get_env(@app, :sender)
      body = URI.encode_query(%{
        "apikey" => api_key, "numbers" => number,
        "message" => text, "sender" => sender, "unicode" => 1
      })
      HTTPoison.get(@send_url<> body)
  end

end
