defmodule CharServer.Factory do
  use ExMachina.Ecto, repo: CharServer.Repo

  alias CharServer.Chars.Char

  def char_factory do
    %Char{
      account_id: 12_345,
      name: Faker.Person.name()
    }
  end
end
