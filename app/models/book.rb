class Book < ActiveRecord::Base
  attr_accessible :author, :title, :on_current_list, :has_been_read, :cover

  mount_uploader :cover, BookCoverUploader
end
