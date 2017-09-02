class CreateVenues < ActiveRecord::Migration[5.1]
  def change
    create_table :venues do |t|
      t.string :name
      t.string :address
      t.text :image
      t.string :venue_rules

      t.timestamps
    end
  end
end
