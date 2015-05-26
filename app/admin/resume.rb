ActiveAdmin.register Resume do

permit_params :name, :company, :position, 
details_attributes:[:summary,:about,:extra,:_destroy,:id],
experiences_attributes:[:employer,:startend,:jobtitle,:jobdescription,:_destroy, :id],
skills_attributes:[:name,:level,:_destroy,:id],
services_attributes:[:name,:level,:_destroy,:id],
softwares_attributes:[:name,:level,:_destroy,:id],
hobbies_attributes:[:name, :_destroy,:id]


form do |f|
	f.inputs 'Resume' do
	f.input :name
	f.input :company
	f.input :position
	f.inputs 'Resume Details' do
		    f.has_many :details, :new_record => true do |t|
			t.input :summary, as: :wysihtml5
			t.input :about, as: :wysihtml5
			t.input :extra, as: :wysihtml5
		end


		f.has_many :experiences, :new_record => true do |t|
			t.input :employer
			t.input :startend
			t.input :jobtitle
			t.input :jobdescription, as: :wysihtml5
			t.input :_destroy, :as => :boolean
		end

	columns do
       column do


		f.has_many :skills, :new_record => true do |t|
			t.input :name
			t.input :level
			t.input :_destroy, :as => :boolean
		end
		

		f.has_many :services, :new_record => true do |t|
			t.input :name
			t.input :level
			t.input :_destroy, :as => :boolean
		end
	end
	column do
		f.has_many :softwares, :new_record => true do |t|
			t.input :name
			t.input :level
			t.input :_destroy, :as => :boolean
		end

		f.has_many :hobbies, :new_record => true do |t|
			t.input :name
			t.input :_destroy, :as => :boolean
		end
	end

end
f.actions
	end
end	
end
end
