#RAILS_3 = ::ActiveRecord::VERSION::MAJOR >= 3

require "active_record"
require "action_controller"
require "active_model"

#$LOAD_PATH.unshift(File.dirname(__FILE__))

require "rails-breadcrumbs"
require "rails-breadcrumbs/version"
require "rails-breadcrumbs/controller_extensions.rb"
require "rails-breadcrumbs/view_extensions.rb"

#$LOAD_PATH.shift

if defined?(ActiveRecord::Base)
  ActionController::Base.send(:include, RailsBreadcrumbs)
  ActionView::Base.send(:include, RailsBreadcrumbs::Helper)
end
