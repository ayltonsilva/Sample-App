class Address < ApplicationRecord
  belongs_to :user
  validates :address_name, presence: true
  validates :city, presence: true
  validates :zip_code, presence: true
  validates :country, presence: true

end
