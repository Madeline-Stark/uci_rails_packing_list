class List < ApplicationRecord
    has_many :items
    validates :name, presence: true, uniqueness: true
    accepts_nested_attributes_for :items
end
