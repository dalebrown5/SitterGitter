class GitSitter < ActiveRecord::Base

  belongs_to :user
  has_many :sitter_selections

end
