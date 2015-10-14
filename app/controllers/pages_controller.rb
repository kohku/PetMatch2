class PagesController < ApplicationController
	before_action :authenticate_user!, only: [:index, :new, :create, :edit, :update, :destroy]
	before_action :set_page, only: [:show, :edit, :update, :destroy]

	def index
		@per_page = params[:per_page] || Page.per_page || 10
		@pages = Page.all.order('title ASC').paginate(per_page: @per_page, :page => params[:page])

		respond_to do |format|
		  format.html #index.html.erb
		  format.json { render json: @pages }
		end
	end

	def show
		respond_to do |format|
		  format.html #show.html.erb
		  format.json { render json: @page }
		end
	end

	def home
		respond_to do |format|
		  format.html #show.html.erb
		  format.json { render json: @page }
		end
	end

	def new
		@page = Page.new title: "New page"
		@page.slug = @page.title.parameterize
	end

	def edit
	end

	def create
		@page = Page.new(page_params)

		respond_to do |format|
			if @page.save
				format.html { redirect_to pages_path, notice: 'Page was successfully created.' }
				format.json { render json: @page, status: :ok }
			else
				format.html { render :new }
				format.json { render json: @page.errors, status: :unprocessable_entity }
			end
	    end
	end

	def update
		respond_to do |format|
	    	if @page.update(page_params)
	        	format.html { redirect_to pages_path, notice: 'Page was successfully updated.' }
	        	format.json { render json: @page, status: :ok }
	      	else
	    
	        	format.html { render :edit }
	        	format.json { render json: @page.errors, status: :unprocessable_entity }
	      	end
	    end
	end

	def destroy
		@page.destroy
		respond_to do |format|
      		format.html { redirect_to pages_path, notice: 'Page was successfully destroyed.' }
      		format.json { head :no_content }
    	end
	end

	private
	# Use callbacks to share common setup or constraints between actions.
	def set_page
		if params[:id].is_a? Numeric
			@page = Page.find(params[:id])
		else
			@page = Page.friendly.find(params[:id])
		end
	end

	# Never trust parameters from the scary internet, only allow the white list through.
	def page_params
	  params.require(:page).permit(:title, :slug, :content)
	end
end
