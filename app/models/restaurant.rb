class Restaurant < ApplicationRecord
    has_many :reviews, dependent: :destroy

    CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]

    validates :name, presence: true
    validates :phone_number, presence: true, uniqueness: { case_sensitive: false }, length: {maximum: 50}
    validates :address, presence: true
    validates :category, presence: true, inclusion: { in: CATEGORIES }

end
