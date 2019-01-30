class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :orders, dependent: :destroy
  
  attr_accessor :password
  attr_accessor :password_confirmation

  validates_presence_of :email
  validates_presence_of :phone
  validates_uniqueness_of :email, case_sensitive: false
  validates_format_of :email, with: /@/
  validates_confirmation_of :password

  before_save :downcase_email
  # before_create :generate_confirmation_instructions

  def downcase_email
    self.email = self.email.delete(' ').downcase
  end
end
