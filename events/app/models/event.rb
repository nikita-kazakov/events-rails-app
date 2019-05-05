class Event < ApplicationRecord

  def free?
    #price == 0
    #price.zero?
    price.blank? || price.zero?
  end

end
