class AddSeatToTicket < ActiveRecord::Migration[7.0]
  def change
    add_column :tickets, :seat, :string
  end
end
