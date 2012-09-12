require 'redmine'

Redmine::Plugin.register :redmine_meeting_rooms do
  name 'Redmine Meeting Rooms plugin'
  author 'Roman Shipiev'
  description 'Redmine plugin for reserve of meeting rooms'
  version '0.0.1'
  url 'https://github.com/rubynovich/redmine_meeting_rooms'
  author_url 'http://roman.shipiev.me/'

  permission :view_reserve_meeting_rooms,  :reserve_meeting_rooms => [:index, :show, :edit, :new, :create, :update, :destroy], :public => true  
  
  menu :top_menu, :reserve_meeting_rooms, {:controller => :reserve_meeting_rooms, :action => :index}, :caption => :label_reserve_meeting_room_plural
  
  menu :admin_menu, :meeting_rooms, 
    {:controller => :meeting_rooms, :action => :index},
    :caption => :label_meeting_room_plural, :html => {:class => :enumerations}  
end