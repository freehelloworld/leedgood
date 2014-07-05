class WelcomeController < ApplicationController
	def index
		@project = Project.find(1);
	end
end
