ActiveAdmin.register Resume do

permit_params :name, :company, :position, 
detail_attributes:[:summary,:about,:extra,:_destroy,:resume_id],
experiences_attributes:[:employer,:startend,:jobtitle,:jobdescription,:_destroy,:resume_id]

form do |f|
	f.inputs 'Resume' do
	f.input :name
	f.input :company
	f.input :position
	f.inputs 'Resume Details' do
		f.has_many :detail, :allow_destroy => true, :new_record => true do |t|
			t.input :summary, as: :wysihtml5
			t.input :about, as: :wysihtml5
			t.input :extra, as: :wysihtml5
		end


		f.has_many :experiences, :allow_destroy => true, :new_record => true do |t|
			t.input :employer
			t.input :startend
			t.input :jobtitle
			t.input :jobdescription, as: :wysihtml5
		end

	columns do
       column do


		f.has_many :skills, :allow_destroy => true, :new_record => true do |t|
			t.input :name
			t.input :level
		end


		f.has_many :services, :allow_destroy => true, :new_record => true do |t|
			t.input :name
			t.input :level
		end
	end
	column do
		f.has_many :softwares, :allow_destroy => true, :new_record => true do |t|
			t.input :name
			t.input :level
		end

		f.has_many :hobbies, :allow_destroy => true, :new_record => true do |t|
			t.input :name
		end
	end

end
f.actions
	end
end	
end
end
