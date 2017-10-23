class CreateBlockFriends < ActiveRecord::Migration[5.1]
  def change
    create_table :block_friends do |t|
      t.integer :id_acc
      t.integer :id_friend

      t.timestamps
    end
  end
end
