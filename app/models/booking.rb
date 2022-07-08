class Booking < ApplicationRecord

  belongs_to :flight
  has_many :passengers, dependent: :destroy

  # prevent a booking from being created if there are no passengers i.e., all been removed
  validates :passengers, presence: true

  # allow destroy permits passenger to be deleted via the remove button
  # reject_if all blank prevents submission of blank passenger form, server side
  accepts_nested_attributes_for :passengers, 
                                allow_destroy: true,
                                reject_if: :all_blank
end
