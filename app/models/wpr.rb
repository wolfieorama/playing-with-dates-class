class Wpr < ActiveRecord::Base

  belongs_to :week
  scope :prev_week, -> { where('week < ?', this_week) }

  def this_week
    Time.now.strftime('%V')
  end

end
