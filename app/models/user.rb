class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :http_authenticatable, :token_authenticatable, :confirmable, :lockable, :timeoutable and :activatable
  devise :registerable, :database_authenticatable, :recoverable,
         :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation

  has_many :client_applications
  has_many :tokens, :class_name => "Oauth2Token",
    :order => "authorized_at desc", :include => [:client_application]
end
