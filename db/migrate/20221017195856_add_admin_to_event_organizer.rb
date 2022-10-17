class AddAdminToEventOrganizer < ActiveRecord::Migration[7.0]
  def change
    add_column :event_organizers, :admin, :boolean
  end
end
