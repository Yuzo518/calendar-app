class CreatePlans < ActiveRecord::Migration[6.0]
  def change
    create_table :plans do |t|
      t.string :title
      t.string :comment
      t.datetime :start_time
      t.datetime :ending_time
      t.integer :date_pattern
      t.timestamps
    end
  end
end
