class SchoolClassesController < ApplicationController
	def index
		@classes = SchoolClass.all
	end

	def show
		@class = SchoolClass.find(params[:id])
	end

	def new
		@class = SchoolClass.new
	end

	def edit
		@class = SchoolClass.find(params[:id])
	end

	def create
		@class = SchoolClass.new(school_class_params(:title, :room_number))
		@class.save
		redirect_to school_class_path(@class)
	end
	   
	def update
		@class = SchoolClass.find(params[:id])
		@class.update(school_class_params(:title, :room_number))
		redirect_to school_class_path(@class)
	end
	   
	  private
	   
	  def school_class_params(*args)
		params.require(:school_class).permit(*args)
	  end
	
end
