class CreateJoinTableSwimsUsers < ActiveRecord::Migration[5.1]
  def change
    create_join_table :swims, :users do |t|
      # t.index [:swim_id, :user_id]
      # t.index [:user_id, :swim_id]
    end
  end
end
