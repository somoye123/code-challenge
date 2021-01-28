class Company < ApplicationRecord
  has_rich_text :description

  VALID_EMAIL_REGEX = /\A([\w+\-].?)+@getmainstreet.com\z/
  validates :email, format: { with: VALID_EMAIL_REGEX,  message: "must end with @getmainstreet.com" }, allow_blank: true

end
