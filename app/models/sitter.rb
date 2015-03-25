class Sitter < ActiveRecord::Base

  has_many :list_items
  has_many :sitter_selections, dependent: :destroy
  has_many :git_sitter_selections
  belongs_to :user


end
