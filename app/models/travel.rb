class Travel < ApplicationRecord
  has_many :bookings, dependent: :destroy
  belongs_to :organiser, class_name: "User"

  has_one_attached :photo
end
