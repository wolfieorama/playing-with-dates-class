class CreateWeeks < ActiveRecord::Migration
  def change
    create_table :weeks do |t|
      t.date :tarehe
      t.integer :week

      t.timestamps null: false
    end
  end
end
