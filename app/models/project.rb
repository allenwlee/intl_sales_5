class Project < ActiveRecord::Base
  attr_accessible :user_id, :title, :budget_size
  belongs_to :user
  has_many :sales
  has_and_belongs_to_many :genres
end
