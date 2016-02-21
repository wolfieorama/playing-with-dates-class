class Wpr < ActiveRecord::Base

  def this_week
    Time.now.strftime('%V')
  end

  scope :prev_week, -> { where('week < ?', this_week) }
  belongs_to :date

end
