class User < ApplicationRecord
  	has_many :user_tickets
    has_many :tickets, :through => :user_tickets
    validates :phone, length: {in: 9..12, message: "invalid phone length" }, numericality: { only_integer: true, message: "only numbers allowed" },allow_nil: true
    validates :password, length: {in: 8..12, message: "invalid pass length" }
    validates :email, uniqueness: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/, message: "invalid mail format" }
end
