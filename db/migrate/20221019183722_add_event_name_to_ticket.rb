class AddEventNameToTicket < ActiveRecord::Migration[7.0]
  def change
    add_column :tickets, :event_name, :string
  end
end
