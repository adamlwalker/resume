module MainHelper
  
def getlist(mod)
	mod.where(resume_id: @resume.id)
  end
end
	

