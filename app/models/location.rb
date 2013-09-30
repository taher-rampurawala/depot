class Location < ActiveRecord::Base
  has_many :users
  validates_presence_of :address, :country, :state
  validates :country, length: { is: 2 }
  validates :zip_code, length: { is: 6 }, numericality: { only_integer: true }
end
