class Event < ApplicationRecord
  has_one_attached :banner
  def poster_url
    Rails.application.routes.url_helpers.url_for(banner) if banner.attached?
  end
end
