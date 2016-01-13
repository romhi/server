#encoding: utf-8

class Message < ActiveRecord::Base

  validates :title, presence: true
  validates :terms_of_service, acceptance: { accept: 'yes' }
  validates :title, format: { with: /\A[a-zA-Z]+\z/,
                                    message: "Допустипы только буквы" }
  validates :title, length: { in: 7..30 }
  validates :comment, length: { maximum: 500 }
  belongs_to :user

end
