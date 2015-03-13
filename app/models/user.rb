class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  has_many :list_items
  has_many :sitter_selections, dependent: :destroy
  has_many :sitters, through: :list_items

  def list
    list_items
  end

  def sitter_selected(sitter)
    sitter_selections.where(sitter_id: sitter.id).first
  end

end
