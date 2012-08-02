class Todo < ActiveRecord::Base
  attr_accessible :body, :list_id

  belongs_to :list
end
