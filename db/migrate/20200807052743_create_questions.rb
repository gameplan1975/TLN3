class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.string :name, null: false, default: ""
      t.integer :year, null: false, default: 2020
      t.integer :month, null:false, default:1
      t.string :memo, null: false, default: ""
      t.boolean :playable, null: false, default: false
      t.references :user
      t.timestamps
    end
  end
end
