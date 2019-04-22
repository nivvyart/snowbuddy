class AddImageToResorts < ActiveRecord::Migration[5.2]
  def change
    add_column :resorts, :image, :text
  end
end
