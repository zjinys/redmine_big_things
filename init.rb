require 'redmine'

Redmine::Plugin.register :redmine_big_things do
  name 'Redmine Big Things plugin'
  author 'Author name'
  description 'This is a plugin for Redmine'
  version '0.0.1'
  url 'http://github.com/zjinys/redmine_big_things'
  author_url 'http://github.com/zjinys/redmine_big_things'

  permission :big_things, {:big_things => [:index, :new,:show,:edit]}, :public => true
  menu :project_menu, :big_things, { :controller => 'big_things', :action => 'index' }, :caption => 'Big Things', :param => :project_id
end
