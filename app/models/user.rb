class User < ActiveRecord::Base
  attr_accessible :magic, :name, :token
end
