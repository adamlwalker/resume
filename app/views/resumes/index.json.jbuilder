json.array!(@resumes) do |resume|
  json.extract! resume, :id, :name, :company, :position
  json.url resume_url(resume, format: :json)
end
