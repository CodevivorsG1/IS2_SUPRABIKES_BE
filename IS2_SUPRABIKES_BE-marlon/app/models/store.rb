class Store < ApplicationRecord
    validates :name_store, presence: true,length: { maximum: 20 }
    validates :address_store, presence: true,length: { maximum: 20 }
    validates :email_store, presence: true,length: { maximum: 20 }
    validates :score_store, presence: true, numericality: { only_integer: true }
    validates :password_store, presence: true,length: { maximum: 50}
    validates :phonenum_store, presence: true, numericality: { only_integer: true }
    validates :celphone_store, presence: true, numericality: { only_integer: true }
    #relations
    has_many :transactions
    belongs_to :city
    has_many :components
    has_many :images
    has_many :bycicles

end
