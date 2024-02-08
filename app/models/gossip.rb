class Gossip < ApplicationRecord
  belongs_to :user, optional: false
  has_many :gossips, through: :join_gossips_tags
end
