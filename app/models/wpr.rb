class Wpr < ActiveRecord::Base
  belongs_to :week

  def last_score
    a = self.week.week.pred
  end
end
