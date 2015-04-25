class PagesController < ApplicationController
	before_action :set_page, only: [:show, :edit, :update, :destroy]


	def show
	end

	def new 
		@page = Page.new
	end 

	def edit
	end

	def create 
		@page = Page.new(page_params)
		if @page.save
			redirect_to @page, notice: 'Page was successfully created.'
    else
      render action: 'new'
    end
	end

	 def update
    respond_to do |format|
      if @page.update(page_params)
        format.html { redirect_to @page, notice: 'Page was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @page.destroy
    respond_to do |format|
      format.html { redirect_to root_url, notice: 'Page was successfully destroyed.' }
    end
  end

	 private
    # Use callbacks to share common setup or constraints between actions.
    def set_page
      @page = Page.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def page_params
      params.require(:page).permit(:title, :content)
    end
end
