class AddOwnerToTicket < ActiveRecord::Migration[7.0]
  def change
    add_column :tickets, :owner, :string
  end
end
