class CategoriesController < ApplicationController
    before_action :set_category, only: [:show, :edit, :update, :destroy]
    
    def new
        @category = Category.new
    end
    
    def index
        
    end
    
    def show
        
    end
    
    def create
        
    @category = Category.new(category_params)
    
        respond_to do |format|
      if @category.save
        format.html { redirect_to @category, notice: 'Category was successfully created.' }
        format.json { render :show, status: :created, location: @category }
      else
        format.html { render :new }
        format.json { render json: @category.errors, status: :unprocessable_entity }
      end
  end
        
    end
   
   
     private
     
    def set_category
      @category = Category.find(params[:id])
    end


    # Only allow a list of trusted parameters through.
    def category_params
      params.require(:category).permit(:name)
    end
   
    
end