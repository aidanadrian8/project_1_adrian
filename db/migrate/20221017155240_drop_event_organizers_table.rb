class DropEventOrganizersTable < ActiveRecord::Migration[7.0]
  def up
    drop_table :event_organizers
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
