class AddAboutToDogShow < ActiveRecord::Migration[7.0]
  def change
    add_column :dog_shows, :about, :string
  end
end
