class AddAbilityToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :ability, :integer
  end
end
