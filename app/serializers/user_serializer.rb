# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  city_id                :integer
#  idUser                 :integer
#  nameUser               :string
#  surnameUser            :string
#  genderUser             :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string
#  last_sign_in_ip        :string
#  authentication_token   :string(30)
#  phonenumUser           :integer
#  celphoneUser           :integer
#  provider               :string
#  uid                    :string
#

class UserSerializer < ApplicationSerializer
  attributes  :id, :city_id, :idUser, :nameUser, :surnameUser, :genderUser, :phonenumUser, :celphoneUser, :email, :role
  has_many :transactions
  has_many :comments
  has_many :forums
  has_many :notifications
  has_one :image, as: :imageable
end
