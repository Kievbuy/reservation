class InitialMigration < ActiveRecord::Migration[5.1]
  def change
    
    create_table :restaurants do |t|
      t.string :name, null: false, default: ""
      t.string :address
      t.time :opens
      t.time :closes
      
      t.timestamps null: false
    end
    
    create_table :tables do |t|
      
      t.timestamps  null: false
    end
    
    create_table :reservations do |t|
      t.integer :number_of_guests
      t.timestamp :from
      t.timestamp :to
    end
    
    
    add_reference :tables, :restaurant, index: true
    add_reference :reservations, :table, index: true
    
  end
end
