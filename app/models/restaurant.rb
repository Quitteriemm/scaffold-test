class Restaurant < ActiveRecord::Base
  has_many :reviews, dependent: :destroy
  validates :stars, inclusion: { in: [1,2,3], allow_nil: false, message: "stars must be 1 , 2 or 3" }
  validates :name, uniqueness: true, presence: true
  validates :address, presence: true
end
