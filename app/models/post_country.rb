class PostCountry < ApplicationRecord
  has_one_attached :photo

  # Validaciones personalizadas
  validate :photo_format
  validate :photo_size

  validates :country_name, presence: true, length: { maximum: 100 }
  validates :favorite_food, presence: true, length: { maximum: 100 }
  validates :favorite_excursion, presence: true, length: { maximum: 500 }

  private

  # Validando formato
  def photo_format
    return unless photo.attached?

    acceptable_types = [ "image/jpeg", "image/png", "image/gif" ]
    unless acceptable_types.include?(photo.content_type)
      errors.add(:photo, I18n.t("forms.post_countries.errors.invalid_photo_format"))
    end
  end

  # Validando tamaño
  def photo_size
    return unless photo.attached?

    if photo.byte_size > 3.megabytes
      errors.add(:photo, I18n.t("forms.post_countries.errors.photo_too_large"))
    end
  end
end
