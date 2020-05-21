class Travel < ApplicationRecord
  has_many :bookings, dependent: :destroy
  belongs_to :organiser, class_name: "User"

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  validates :address, presence: true
  has_one_attached :photo

end
