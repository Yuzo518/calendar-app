class ChangeDataDatePatternPlan < ActiveRecord::Migration[6.0]
  def change
    change_column :plans, :date_pattern, :string
  end
end
