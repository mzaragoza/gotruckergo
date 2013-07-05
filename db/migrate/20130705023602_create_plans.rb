class CreatePlans < ActiveRecord::Migration
  def up
    create_table :plans do |t|
      t.decimal :price
      t.string :name, :default => ''
      t.string :slug, :default => ''
      t.boolean :featured
      t.boolean :active, :default => true
      t.integer :licenses
      t.integer :sort_order

      t.timestamps
    end
  end

  def down
    drop_table :plans
  end
end
