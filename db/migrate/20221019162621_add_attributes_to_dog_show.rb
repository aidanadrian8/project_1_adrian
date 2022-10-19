class AddAttributesToDogShow < ActiveRecord::Migration[7.0]
  def change
    add_column :dog_shows, :location, :string
    add_column :dog_shows, :number_of_seats, :integer
  end
end
