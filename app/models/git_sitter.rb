class GitSitter < ActiveRecord::Base

  belongs_to :user
  has_many :git_sitter_selections

end
