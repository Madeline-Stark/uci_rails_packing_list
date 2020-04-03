class Item < ApplicationRecord
    belongs_to :list
    validates :quantity, length: {maximum: 200}
    validates :name, presence: true
end
