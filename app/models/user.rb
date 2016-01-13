#encoding: utf-8

class User < ActiveRecord::Base

  has_many :messages
  validates_associated :messages
  validates :email, confirmation: true
  # validates :email_confirmation, presence: true
  validates :age, numericality: { only_integer: true, message: "Только число"}
  validates :email, uniqueness: {message: "Такой email уже есть"}
  validates :name, uniqueness: { case_sensitive: false, message: 'Уникальное имя' }
end
