defmodule CharServer.Chars do
  @moduledoc """
  The Chars context.
  """
  alias CharServer.Chars.Char
  alias CharServer.Repo

  @doc """
  Gets a list of chars
  """
  def list_chars do
    Repo.all(Char)
  end

  @doc """
  Gets one char
  """
  def get_char(char_id) do
    Repo.get(Char, char_id)
  end
end
