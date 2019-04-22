class CreateResorts < ActiveRecord::Migration[5.2]
  def change
    create_table :resorts do |t|
      t.text :name
      t.text :region
      t.text :homepage
      t.integer :lifts
      t.integer :elevation
      t.integer :area

      t.timestamps
    end
  end
end
