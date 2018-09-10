class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


   validate :has_at

   def has_at
   	unless email.include?("@")
   		errors.add(:email, "must contain @")
   	end
   end
end
