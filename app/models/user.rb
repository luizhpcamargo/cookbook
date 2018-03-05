class User < ApplicationRecord
  has_many :recipes, foreign_key: :owner_id
  has_and_belongs_to_many :shared_recipes, class_name: 'Recipe', join_table: :users_recipes

  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :trackable,
    :validatable, :omniauthable

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.name = auth.info.name
      user.password = Devise.friendly_token[0,20]
    end
  end

  def units
    Unit.where(user_id: [self.id, nil]).order(:acronym)
  end
end
