class CreateTableEventOrganizer < ActiveRecord::Migration[7.0]
  def change
    table_exists?(:event_organizers) ? drop_table(:event_organizers) : nil
    create_table :event_organizers do |t|
      t.string :description
      t.string :firstName
      t.string :lastname
      t.string :email

      t.timestamps
    end
  end
end
