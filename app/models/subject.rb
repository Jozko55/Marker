class Subject < ActiveRecord::Base
  has_many :events


  def points_count
    x = 0
    events.each do |event|
      x = x + event.points
    end
    x
  end

  def max_points_count
    y = 0
    events.each do |event|
      y = y + event.max_points
    end
    y
  end

  def percent
    p=0
    if self.max_points_count > 0
      p = self.points_count * 100 / self.max_points_count
    else
      p = 0
    end
    p
  end

  def mark
    mark = 0
    if self.percent > 90
      mark = 1
    else
      if self.percent > 75
        mark= 2
      else
        if self.percent > 50
          mark=3
        else
          if self.percent > 40
            mark=4
          else
            mark=5
          end
        end

      end
    end
  end

end
