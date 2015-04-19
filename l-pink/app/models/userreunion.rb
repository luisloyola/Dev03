class Userreunion < ActiveRecord::Base
	belongs_to :user
  	belongs_to :reunion
end
