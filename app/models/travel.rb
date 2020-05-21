class Travel < ApplicationRecord
  has_many :bookings, dependent: :destroy
  belongs_to :organiser, class_name: "User"

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  validates :address, presence: true
  has_one_attached :photo

   include PgSearch::Model
  pg_search_scope :search_by_destination_and_name_of_vehicle,
    against: [ :destination, :name_of_vehicle ],
    using: {
      tsearch: { prefix: true }
    }

end
