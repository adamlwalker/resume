class Resume < ActiveRecord::Base
has_many :skills
has_many :services
has_one :detail
accepts_nested_attributes_for :skills
accepts_nested_attributes_for :services
accepts_nested_attributes_for :detail
end
