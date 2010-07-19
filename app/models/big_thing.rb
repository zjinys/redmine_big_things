class BigThing < ActiveRecord::Base
  unloadable
  belongs_to :project,:class_name => 'Project', :foreign_key => 'project_id'
  belongs_to :author, :class_name => 'User', :foreign_key => 'author_id'

  has_many :big_thing_tasks, :dependent => :delete_all
end
