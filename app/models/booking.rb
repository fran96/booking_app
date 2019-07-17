class Booking < ApplicationRecord
    belongs_to :rooms
    accepts_nested_attributes_for :rooms
end
