class Villa < ApplicationRecord
  has_many :villa_images, dependent: :destroy
end
