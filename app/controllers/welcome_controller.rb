class WelcomeController < ApplicationController
	def index
		@projects = Project.where(isonhome: true);
	end
end
