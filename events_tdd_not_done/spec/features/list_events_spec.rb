require 'rails_helper'
describe "Viewing the list of events_tdd_not_done" do



  it "shows the events_tdd_not_done" do

    event1 = Event.create(name: "BugSmash",
                          location: "PG-13",
                          price: 10.00,
                          description: "BugSmash is an awesome place for fun and games.",
                          starts_at: "2013-05-02")

    event2 = Event.create(name: "Hackathon",
                          location: "Austin",
                          price: 15.00,
                          description: "Hackathon is an awesome place for fun and games.",
                          starts_at: "2001-05-02")

    event3 = Event.create(name: "Kata Camp",
                          location: "Dallas",
                          price: 75.00,
                          description: "Kata Camp is an awesome place for fun and games.",
                          starts_at: "2005-05-02")

    visit events_url
    expect(page).to have_text("3 Events")
    expect(page).to have_text(event1.name)
    expect(page).to have_text(event2.name)
    expect(page).to have_text(event3.name)

    #Test for location and price:
    expect(page).to have_text(event1.location)
    expect(page).to have_text(event1.price)

  end

end