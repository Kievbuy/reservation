class AddSeatsToTables < ActiveRecord::Migration[5.1]
  def change
    add_column :tables, :seats, :integer
  end
end
