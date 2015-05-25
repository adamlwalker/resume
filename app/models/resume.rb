class Resume < ActiveRecord::Base
has_many :skills
has_many :services
has_many :softwares
has_one :detail
has_many :experiences
has_many :hobbies
accepts_nested_attributes_for :skills
accepts_nested_attributes_for :services
accepts_nested_attributes_for :detail
accepts_nested_attributes_for :softwares
accepts_nested_attributes_for :experiences
accepts_nested_attributes_for :hobbies
end
