class Booking < ApplicationRecord
    belongs_to :user
    validates_presence_of :booking_code
end
