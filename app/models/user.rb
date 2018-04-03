class User < ApplicationRecord
  	has_many :user_tickets
    has_many :tickets, :through => :user_tickets
    validates :phone, length: {in: 9..12 }, numericality: { only_integer: true },allow_nil: true
    validates :password, length: {in: 8..12 }
    validates :email, uniqueness: true
end
