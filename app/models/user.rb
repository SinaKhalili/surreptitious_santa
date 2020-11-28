class User < ApplicationRecord
  include Clearance::User
  has_many :microposts
end
