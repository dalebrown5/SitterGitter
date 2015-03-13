class Sitter < ActiveRecord::Base

  has_many :list_items
  has_many :sitter_selections, dependent: :destroy
  belongs_to :user

end
