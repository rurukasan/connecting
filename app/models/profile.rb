class Profile < ApplicationRecord
  belongs_to :user, optional: true

  with_options presence: true do
    validates :nickname
    validates :term
    validates :style
  end
  
end
