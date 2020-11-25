class Tweet < ApplicationRecord
  validates :message, presence: true, length: {minimum: 1, maximum: 140} 
end
