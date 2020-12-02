class User < ApplicationRecord
  include Clearance::User
  has_many :microposts
  has_one :profile, dependent: :destroy
  before_create :build_profile
  accepts_nested_attributes_for :profile, update_only: true
end
