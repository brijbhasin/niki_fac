class Project < ActiveRecord::Base
  belongs_to :customer
  has_one :project_stage
end
