class AddImageToRestaurants < ActiveRecord::Migration[6.1]
  def change
    add_column :restaurants, :images, :string
  end
end
