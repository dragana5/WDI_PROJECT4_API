class ChangeCreatedByInSwims < ActiveRecord::Migration[5.1]
  def change
    remove_column :swims, :created_by, :string
    add_column :swims, :created_by, :integer
  end
end
