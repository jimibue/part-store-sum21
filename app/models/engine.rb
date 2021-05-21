class Engine < ApplicationRecord
    has_many :parts, dependent: :destroy
end
