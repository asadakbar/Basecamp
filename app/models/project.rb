class Project < ActiveRecord::Base
  attr_accessible :description, :name, :user_id, :status
  validates_presence_of :user_id

  # before_create :current_user?

  belongs_to :user
  has_many :list

  accepts_nested_attributes_for :user

  # def current_user?
  #   @user_status = current_user
  #   !@user_status.nil?
  # end
end
