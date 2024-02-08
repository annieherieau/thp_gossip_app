class User < ApplicationRecord
  belongs_to :city, optional: false
  has_many :gossips
end
