class Week < ActiveRecord::Base
  has_many :wprs

  def week
    Time.now.strftime("%U").to_i
  end
end
