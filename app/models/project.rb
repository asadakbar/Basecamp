class Project < ActiveRecord::Base
  attr_accessible :description, :name, :user_id

  belongs_to :user
  accepts_nested_attributes_for :user
end
