class ListItem < ActiveRecord::Base

  belongs_to :user
  belongs_to :sitter

end
