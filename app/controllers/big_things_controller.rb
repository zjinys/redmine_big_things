class BigThingsController < ApplicationController
  unloadable

  before_filter :find_project,:authorize,:except => [:change]
  def index
    @big_thing_pages, @big_things = paginate :big_things,:per_page => 10,:conditions=>['project_id=? and status != 50',@project.id]
    render :action => "index", :layout => false if request.xhr?
  end

  def new
     @big_thing = BigThing.new(:project => @project, :author => User.current)
        if request.post?
          @big_thing.attributes = params[:big_thing]
          if @big_thing.save
            flash[:notice] = l(:notice_successful_create)
            redirect_to :action => "index", :project_id => params[:project_id]
          else
            render :action => "new", :id => params[:id], :project_id => params[:project_id]
          end
        end
  end

  def show
    @big_thing = BigThing.find_by_id(params[:id])
    @members = @project.assignable_users
    @big_thing_task_pages, @tasks = paginate :big_thing_task,:per_page => 10,:conditions=>['big_thing_id=?',params[:id]]
    render :action => "show",:id =>params[:id] ,:project_id => @project.id, :layout => false if request.xhr?
  end

  private

  def find_project
    @project = Project.find(params[:project_id])
    rescue ActiveRecord::RecordNotFound
    render_404
  end
end
