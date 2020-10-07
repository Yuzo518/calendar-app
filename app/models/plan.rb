class Plan < ApplicationRecord
  has_many :plan_users
  has_many :users, through: :plan_users, dependent: :destroy

  # 
  validates :title, presence: true, length: { maximum: 15 }

  # 
  with_options presence: true do
    validates :start_time
    validates :ending_time
    validates :date_pattern
  end

  # 
  validates :comment, presence: true, length: { maximum: 500 }
end
