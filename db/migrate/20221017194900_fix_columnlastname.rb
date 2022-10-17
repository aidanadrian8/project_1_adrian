class FixColumnlastname < ActiveRecord::Migration[7.0]
  def change
    rename_column :event_organizers, :lastname, :lastName
  end
end
