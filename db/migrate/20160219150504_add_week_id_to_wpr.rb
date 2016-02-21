class AddWeekIdToWpr < ActiveRecord::Migration
  def change
    add_column :wprs, :week_id, :integer
  end
end
