class VillaImage < ApplicationRecord
  belongs_to :villa
  has_one_attached :image

  acts_as_list scope: :villa

  default_scope { order(position: :asc) }
end
