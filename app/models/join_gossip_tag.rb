class JoinGossipTag < ApplicationRecord
  belongs_to :gossip, optional: false
  belongs_to :tag, optional: false
end
