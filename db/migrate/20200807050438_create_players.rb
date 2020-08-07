class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.boolean :admin, null: false, default: false
      t.integer :game, null: false, default: 0
      t.integer :correct, null: false, default: 0
      t.string :message, null: false, default: "他のプレイヤーへ一言書いてください", limit: 100
      t.string :favorite_genre, null: false, default: "得意なクイズジャンルを書いてください", limit: 100
      t.references :user
      t.timestamps
    end
  end
end
