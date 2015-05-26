class Resume < ActiveRecord::Base
has_many :skills
has_many :services
has_many :softwares
has_many :details
has_many :experiences
has_many :hobbies
accepts_nested_attributes_for :skills, :allow_destroy => true
accepts_nested_attributes_for :services, :allow_destroy => true
accepts_nested_attributes_for :details, :allow_destroy => true
accepts_nested_attributes_for :softwares, :allow_destroy => true
accepts_nested_attributes_for :experiences, :allow_destroy => true
accepts_nested_attributes_for :hobbies, :allow_destroy => true
end
