#Helpers for events_tdd_not_done.
#Insert tutorial section #5 - Nikita.
module EventsHelper

  def format_price(event)
    if event.price == 0
      "<strong>Free!</strong>".html_safe
    else
      number_to_currency(event.price)
    end
  end

end
