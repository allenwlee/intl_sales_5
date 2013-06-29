class Sale < ActiveRecord::Base
  attr_accessible :bid, :ask, :close, :close_date
  belongs_to :project
  has_many :sale_histories
  has_many :territories
  has_many :media
end
