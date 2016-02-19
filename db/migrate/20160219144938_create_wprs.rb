class CreateWprs < ActiveRecord::Migration
  def change
    create_table :wprs do |t|
      t.integer :c_score
      t.integer :a_score
      t.integer :n_score

      t.timestamps null: false
    end
  end
end
