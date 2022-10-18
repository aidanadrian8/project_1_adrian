class AddDogNameToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :dog_name, :string
  end
end
