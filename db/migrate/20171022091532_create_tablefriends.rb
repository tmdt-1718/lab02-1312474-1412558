class CreateTablefriends < ActiveRecord::Migration[5.1]
  def change
    create_table :tablefriends do |t|
      t.integer :id_acc
      t.integer :id_friend

      t.timestamps
    end
  end
end
