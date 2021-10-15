class Post < ApplicationRecord
  validates :time, presence: true, numericality: {only_integer: true}
 

  validates :place, presence: true
  year_month_day = /\A\d{4}-\d{2}-\d{2}\z/
  
  validates :date, presence: true, format: { with: year_month_day }
  
end
