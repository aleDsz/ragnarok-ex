defmodule CharServer.CharsTest do
  use CharServer.DataCase

  alias CharServer.Chars

  describe "Chars" do
    @tag :skip
    test "list_chars/0 returns an empty list" do
      assert [] == Chars.list_chars()
    end

    @tag :skip
    test "list_chars/0 returns a list" do
      insert(:char)
      assert [char] = Chars.list_chars()
      assert char.char_id == 15000
    end

    test "get_char/1 return a char" do
      char = insert(:char)

      assert char == Chars.get_char(char.char_id)
    end
  end
end
