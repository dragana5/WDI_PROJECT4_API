class CreateSwims < ActiveRecord::Migration[5.1]
  def change
    create_table :swims do |t|
      t.string :title
      t.text :description
      t.datetime :startDate
      t.datetime :endDate
      t.references :venue, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
