defmodule CharServer.Chars.Char do
  @moduledoc """

  """
  use Ecto.Schema

  @primary_key {:char_id, :id, autogenerate: true}
  schema "char" do
    field(:account_id, :integer, default: 0)
    field(:char_num, :integer, default: 0)
    field(:name, :string, default: "")
    field(:class, :integer, default: 0)
    field(:base_level, :integer, default: 1)
    field(:job_level, :integer, default: 1)
    field(:base_exp, :integer, default: 0)
    field(:job_exp, :integer, default: 0)
    field(:zeny, :integer, default: 0)
    field(:str, :integer, default: 0)
    field(:agi, :integer, default: 0)
    field(:vit, :integer, default: 0)
    field(:int, :integer, default: 0)
    field(:dex, :integer, default: 0)
    field(:luk, :integer, default: 0)
    field(:max_hp, :integer, default: 0)
    field(:hp, :integer, default: 0)
    field(:max_sp, :integer, default: 0)
    field(:sp, :integer, default: 0)
    field(:status_point, :integer, default: 0)
    field(:skill_point, :integer, default: 0)
    field(:option, :integer, default: 0)
    field(:karma, :integer, default: 0)
    field(:manner, :integer, default: 0)
    field(:party_id, :integer, default: 0)
    field(:guild_id, :integer, default: 0)
    field(:pet_id, :integer, default: 0)
    field(:homun_id, :integer, default: 0)
    field(:elemental_id, :integer, default: 0)
    field(:hair, :integer, default: 0)
    field(:hair_color, :integer, default: 0)
    field(:clothes_color, :integer, default: 0)
    field(:body, :integer, default: 0)
    field(:weapon, :integer, default: 0)
    field(:shield, :integer, default: 0)
    field(:head_top, :integer, default: 0)
    field(:head_mid, :integer, default: 0)
    field(:head_bottom, :integer, default: 0)
    field(:robe, :integer, default: 0)
    field(:last_map, :string, default: "")
    field(:last_x, :integer, default: 53)
    field(:last_y, :integer, default: 111)
    field(:save_map, :string, default: "")
    field(:save_x, :integer, default: 53)
    field(:save_y, :integer, default: 111)
    field(:partner_id, :integer, default: 0)
    field(:online, :integer, default: 0)
    field(:father, :integer, default: 0)
    field(:mother, :integer, default: 0)
    field(:child, :integer, default: 0)
    field(:fame, :integer, default: 0)
    field(:rename, :integer, default: 0)
    field(:delete_rate, :integer, default: 0)
    field(:moves, :integer, default: 0)
    field(:unban_time, :integer, default: 0)
    field(:font, :integer, default: 0)
    field(:uniqueitem_counter, :integer, default: 0)
    field(:sex, :string, default: "M")
    field(:hotkey_rowshift, :integer, default: 0)
    field(:hotkey_rowshift2, :integer, default: 0)
    field(:clan_id, :integer, default: 0)
    field(:last_login, :naive_datetime)
    field(:title_id, :integer, default: 0)
    field(:show_equip, :integer, default: 0)
  end
end
