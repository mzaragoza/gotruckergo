class CreateTrucks < ActiveRecord::Migration
  def up
    create_table :trucks do |t|
      t.integer :trailer_id
      t.string :name, :null => false, :default => ""
      t.string :annual_inspection_date
      t.string :engine
      t.string :sleeper
      t.string :transmission
      t.string :suspension
      t.string :front_axel_capacity
      t.string :rear_axle_capacity
      t.string :rear_end_ratio
      t.string :wheelbase
      t.string :wheels
      t.string :tires
      t.string :odometer
      t.string :vin
      t.string :tag

      t.timestamps
    end
  end

  def down
    drop_table :trucks
  end
end
