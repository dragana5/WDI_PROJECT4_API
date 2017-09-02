class AddCreatedByToSwims < ActiveRecord::Migration[5.1]
  def change
    add_column :swims, :created_by, :string
  end
end
