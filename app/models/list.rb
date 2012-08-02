class List < ActiveRecord::Base
  attr_accessible :description, :name, :project_id
  belongs_to :project
  has_many :todos
end
