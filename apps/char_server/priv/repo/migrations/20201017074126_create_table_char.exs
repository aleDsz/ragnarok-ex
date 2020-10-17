defmodule CharServer.Repo.Migrations.CreateTableChar do
  use Ecto.Migration

  def up do
    create_if_not_exists table(:char, primary_key: false, engine: "MyISAM") do
      add :char_id, :serial, primary_key: true
      add :account_id, :integer, size: 11, null: false, default: 0
      add :char_num, :smallint, size: 1, null: false, default: 0
      add :name, :string, size: 30, null: false, default: ""
      add :class, :integer, size: 6, null: false, default: 0
      add :base_level, :integer, size: 6, null: false, default: 1
      add :job_level, :integer, size: 6, null: false, default: 1
      add :base_exp, :bigint, null: false, default: 0
      add :job_exp, :bigint, null: false, default: 0
      add :zeny, :integer, null: false, default: 0
      add :str, :integer, null: false, default: 0
      add :agi, :integer, null: false, default: 0
      add :vit, :integer, null: false, default: 0
      add :int, :integer, null: false, default: 0
      add :dex, :integer, null: false, default: 0
      add :luk, :integer, null: false, default: 0
      add :max_hp, :integer, null: false, default: 0
      add :hp, :integer, null: false, default: 0
      add :max_sp, :integer, null: false, default: 0
      add :sp, :integer, null: false, default: 0
      add :status_point, :integer, null: false, default: 0
      add :skill_point, :integer, null: false, default: 0
      add :option, :integer, null: false, default: 0
      add :karma, :tinyint, size: 3, null: false, default: 0
      add :manner, :smallint, null: false, default: 0
      add :party_id, :integer, null: false, default: 0
      add :guild_id, :integer, null: false, default: 0
      add :pet_id, :integer, null: false, default: 0
      add :homun_id, :integer, null: false, default: 0
      add :elemental_id, :integer, null: false, default: 0
      add :hair, :tinyint, size: 4, null: false, default: 0
      add :hair_color, :smallint, size: 5, null: false, default: 0
      add :clothes_color, :smallint, size: 5, null: false, default: 0
      add :body, :smallint, size: 5, null: false, default: 0
      add :weapon, :smallint, size: 6, null: false, default: 0
      add :shield, :smallint, size: 6, null: false, default: 0
      add :head_top, :smallint, size: 6, null: false, default: 0
      add :head_mid, :smallint, size: 6, null: false, default: 0
      add :head_bottom, :smallint, size: 6, null: false, default: 0
      add :robe, :smallint, size: 6, null: false, default: 0
      add :last_map, :string, size: 11, null: false, default: ""
      add :last_x, :smallint, size: 4, null: false, default: 53
      add :last_y, :smallint, size: 4, null: false, default: 111
      add :save_map, :string, size: 11, null: false, default: ""
      add :save_x, :smallint, size: 4, null: false, default: 53
      add :save_y, :smallint, size: 4, null: false, default: 111
      add :partner_id, :integer, size: 11, null: false, default: 0
      add :online, :tinyint, size: 2, null: false, default: 0
      add :father, :integer, size: 11, null: false, default: 0
      add :mother, :integer, size: 11, null: false, default: 0
      add :child, :integer, size: 11, null: false, default: 0
      add :fame, :integer, size: 11, null: false, default: 0
      add :rename, :smallint, size: 3, null: false, default: 0
      add :delete_rate, :integer, size: 11, null: false, default: 0
      add :moves, :integer, size: 11, null: false, default: 0
      add :unban_time, :integer, size: 11, null: false, default: 0
      add :font, :tinyint, size: 3, null: false, default: 0
      add :uniqueitem_counter, :integer, size: 11, null: false, default: 0
      add :sex, :string, size: 1, null: false, default: "M"
      add :hotkey_rowshift, :tinyint, size: 3, null: false, default: 0
      add :hotkey_rowshift2, :tinyint, size: 3, null: false, default: 0
      add :clan_id, :integer, size: 11, null: false, default: 0
      add :last_login, :naive_datetime
      add :title_id, :integer, size: 11, null: false, default: 0
      add :show_equip, :tinyint, size: 3, null: false, default: 0
    end

    create unique_index(:char, :name, name: :name_key)
    create index(:char, :account_id, name: :account_id)
    create index(:char, :party_id, name: :party_id)
    create index(:char, :guild_id, name: :guild_id)
    create index(:char, :online, name: :online)

    flush()

    execute "ALTER TABLE `char` AUTO_INCREMENT=15000;"
  end

  def down do
    drop_if_exists table(:char)
  end
end
