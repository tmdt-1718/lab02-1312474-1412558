class CreateMessages < ActiveRecord::Migration[5.1]
  def change
    create_table :messages do |t|
      t.string :subject
      t.text :body
      t.boolean :read, :default => false
      t.datetime :readed_at
      t.timestamps
    end
  end
end
