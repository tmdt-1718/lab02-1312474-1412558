class CreateMessages < ActiveRecord::Migration[5.1]
  def change
    create_table :messages do |t|
      t.string :subject
      t.text :body
      t.references :conversation, index: true
      t.references :user, index: true
      t.boolean :read, :default => false
      t.datetime :readed_at
      t.timestamps
    end
  end
end
