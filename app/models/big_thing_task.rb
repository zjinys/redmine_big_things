class BigThingTask < ActiveRecord::Base
  unloadable
  belongs_to :big_thing,:class_name => 'BigThing', :foreign_key => 'big_thing_id'

  
end
