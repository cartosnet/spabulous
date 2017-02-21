class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :flats, dependent: :destroy
  has_many :bookings
  # TODO validations :
  ## name must be presence true
  ## email must be unique
  ## birthdate must be presence true and age must be > 18 ( TO DO : before_create )
end
