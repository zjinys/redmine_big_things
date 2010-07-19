class BigThingTasksController < ApplicationController
  unloadable


  def new
    p 'hello '
    @big_thing_task = BigThingTask.new(:big_thing=>BigThing.find_by_id(params[:id]))
    p params
    if request.post?
      @big_thing_task.attributes = params[:big_thing_tasks]
      p
      if @big_thing_task.save
        p 'word'
      else
        p 'error'
      end
    end
  end
end
