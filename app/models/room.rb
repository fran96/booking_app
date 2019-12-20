class Room < ApplicationRecord
    has_and_belongs_to_many :users
    accepts_nested_attributes_for :users

    #attr_accessor :title, :address, :image
end
