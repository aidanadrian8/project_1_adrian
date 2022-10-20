class AddPriceToDogShow < ActiveRecord::Migration[7.0]
  def change
    add_column :dog_shows, :price, :integer
  end
end
