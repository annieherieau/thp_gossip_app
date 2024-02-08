class Gossip < ApplicationRecord
  belongs_to :user, optional: false
end
