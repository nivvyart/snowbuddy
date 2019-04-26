class RemoveMessageIdFromMessages < ActiveRecord::Migration[5.2]
  def change
    remove_column :messages, :message_id, :integer
  end
end
