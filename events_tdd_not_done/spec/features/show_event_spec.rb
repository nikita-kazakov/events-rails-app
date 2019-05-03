require 'rails_helper'

describe "viewing an individual event" do

  it 'shows the events_tdd_not_done detail' do

    event = Event.create(name: "BugSmash",
                         location: "Denver",
                         price: 10.00,
                         description: 'Fun evening of bug smashing',
                         starts_at: 10.days.from_now)

    #visit 'http://example.com/events/1'
    visit event_url(event)
    expect(page).to have_text(event.name)
  end

end