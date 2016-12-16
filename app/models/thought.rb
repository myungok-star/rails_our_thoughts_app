class Thought < ApplicationRecord
  belongs_to :user, optional: true
end
