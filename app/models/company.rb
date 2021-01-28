class Company < ApplicationRecord
  has_rich_text :description
  DEFAULT_COLOR = '#aeaeae'

  VALID_EMAIL_REGEX = /\A([\w+\-].?)+@getmainstreet.com\z/
  validates :email, format: { with: VALID_EMAIL_REGEX,  message: "must end with @getmainstreet.com" }, allow_blank: true
  def background_color
    self.color || DEFAULT_COLOR
  end
end
