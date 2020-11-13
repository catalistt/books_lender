class Book < ApplicationRecord
  belongs_to :user, optional: true
  enum status: [:available, :reserved, :buyed, :requested]

  def to_s
    name
  end
end
