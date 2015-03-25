class GitSitterSelection < ActiveRecord::Base
  belongs_to :sitter
  belongs_to :git_sitter
end
