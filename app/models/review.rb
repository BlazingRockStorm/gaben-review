class Review < ApplicationRecord
  belongs_to :game
  belongs_to :user

  validates :content, presence: true

  # scope :newest_first, ->{order created_at: :desc}
  default_scope {order created_at: :desc}
end
