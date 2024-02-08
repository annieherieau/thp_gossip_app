class Tag < ApplicationRecord
  has_many :gossips, through: :join_gossips_tags

end
