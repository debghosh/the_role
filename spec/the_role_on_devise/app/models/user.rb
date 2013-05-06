class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  include TheRoleUserModel

  # Setup accessible (or protected) attributes for your model
  # attr_accessible :email, :password, :password_confirmation, :remember_me
  # User accessible fields
  # attr_accessible :name, :company, :address

  # Set default role
  before_create :set_default_role

  # When we uncomment this string - test should give fail
  # just for example, do not uncomment it
  # attr_accessible :some_protected_field

  # RELATIONS
  has_many :pages

  private

  def set_default_role
    role_name = TheRole.config.default_user_role
    self.role = Role.with_name(role_name) if role_name
  end
end
