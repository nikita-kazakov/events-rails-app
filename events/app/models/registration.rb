class Registration < ApplicationRecord
  belongs_to :event

  validates :name, presence: true
  validates :email, format: { with: /(\S+)@(\S+)/}

end
