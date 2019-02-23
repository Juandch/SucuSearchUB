class Suculenta < ApplicationRecord
    has_one :sustrato
    has_one :family
    has_one :organ
    has_one_attached:image
    validates :name, presence: true
    validates :idOrgan, presence: true
    validates :idFamily, presence: true
    validates :idSustrato, presence: true
    validates :temp, presence: true
    validate :correct_image_type

    private
    def correct_image_type
      if image.attached? && !image.content_type.in?(%w(image/jpeg image/jpeg image/jpg image/png))
            errors.add(:image, 'POR FAVOR UN ARCHIVO JPEG, PNG O JPG')
      elsif image.attached? == false
            errors.add(:image, 'DEBE TENER UNA IMAGEN ADJUNTA')
      end
    end

end
