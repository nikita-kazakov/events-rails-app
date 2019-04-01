class EventsController < ApplicationController

  def index
    @time = Time.now
    @events = ["BugSmash", "Hackathon", "Kata Camp", "Terminate"]
  end

end
