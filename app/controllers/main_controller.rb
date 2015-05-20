class MainController < ApplicationController

	
def index	 
       	@resume = Resume.where(name: params[:name]).first
	if @resume.nil? || params[:name].nil?
		@resume = Resume.where(name: 'default').first
	end

  end


end
