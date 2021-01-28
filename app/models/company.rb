class Company < ApplicationRecord
  has_rich_text :description
  DEFAULT_COLOR = '#aeaeae'

  VALID_EMAIL_REGEX = /\A([\w+\-].?)+@getmainstreet.com\z/
  validates :email, format: { with: VALID_EMAIL_REGEX,  message: "must end with @getmainstreet.com" }, allow_blank: true
  validates :zip_code, numericality: { only_integer: true }, length: { is: 5 }

  before_save :update_company_city_and_state, if: :zip_code_changed?

  def display_company_city_and_state
    city_name =  self.city.present?  ? self.city : "Unknown city"
    state_name = self.state.present? ? self.state : "Unknown state"
    "#{city_name}, #{ state_name }" 
  end

  def background_color
    self.color || DEFAULT_COLOR
  end

  private

  def update_company_city_and_state
    zip_code = ZipCodes.identify(self.zip_code)
    if zip_code.present? && zip_code[:city].present?
      self.city = zip_code[:city]
    else
      self.city = nil
    end

    if zip_code.present? && zip_code[:state_code].present?
      self.state = zip_code[:state_code]
    else
      self.state = nil
    end
  end
end
