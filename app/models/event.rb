class Event < ActiveRecord::Base
  belongs_to :subject

  def percent
    p = 0
    if self.max_points > 0
      p = self.points * 100 / self.max_points
    else
      p = 0
    end
    p
  end
end
