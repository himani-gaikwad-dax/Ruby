class Items < ApplicationRecord
    validates :title, presence: true, length: {minimum: 6, maximum: 50}
end