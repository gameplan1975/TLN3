class ChangePlayableDefault < ActiveRecord::Migration[5.2]
  def change
    change_column_default :questions, :playable, from: false, to: true
  end
end
