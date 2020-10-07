class AddMasterIdToPlans < ActiveRecord::Migration[6.0]
  def change
    add_column :plans, :master_id, :integer
  end
end
