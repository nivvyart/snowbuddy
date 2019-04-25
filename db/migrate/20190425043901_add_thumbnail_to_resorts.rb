class AddThumbnailToResorts < ActiveRecord::Migration[5.2]
  def change
    add_column :resorts, :thumbnail, :text
  end
end
