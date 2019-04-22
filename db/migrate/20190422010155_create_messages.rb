class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages, :id => false do |t|
      t.integer :message_id
      t.integer :resort_id
      t.text :message

      t.timestamps
    end
  end
end
