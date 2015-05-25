ActiveAdmin.register Resume do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
form do |f|
	f.inputs 'Resume' do
	f.input :name
	f.input :company
	f.input :position
	f.inputs 'Resume Details' do
		f.has_many :detail, :allow_destroy => true, :new_record => true do |t|
			t.input :summary
			t.input :about
			t.input :extra
		end


		f.has_many :experiences, :allow_destroy => true, :new_record => true do |t|
			t.input :employer
			t.input :startend
			t.input :jobtitle
			t.input :jobdescription
		end

		f.has_many :skills, :allow_destroy => true, :new_record => true do |t|
			t.input :name
			t.input :level
		end


		f.has_many :services, :allow_destroy => true, :new_record => true do |t|
			t.input :name
			t.input :level
		end
	
	
		f.has_many :softwares, :allow_destroy => true, :new_record => true do |t|
			t.input :name
			t.input :level
		end

		f.has_many :hobbies, :allow_destroy => true, :new_record => true do |t|
			t.input :name
		end
	end
end	
end
end
