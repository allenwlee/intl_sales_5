class Territory < ActiveRecord::Base
  attr_accessible :name
  belongs_to :sale
end
