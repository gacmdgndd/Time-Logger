class TimeEntry < ActiveRecord::Base
  belongs_to :project
  belongs_to :user
  belongs_to :task
  belongs_to :worktype
end
