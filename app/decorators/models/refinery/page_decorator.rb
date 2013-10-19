Refinery::Page.class_eval do
  scope :menu, where(:show_in_menu => true)
end
