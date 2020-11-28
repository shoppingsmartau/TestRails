class CategoriesController < ApplicationController
    before_action :set_category, only: [:show, :edit, :update, :destroy]
    before_action :require_user
    before_action :require_admin, except: [:index, :show]
    
    def new
        @category = Category.new
    end
    
    def index
        @category = Category.paginate(page: params[:page], per_page: 2)
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
      
    def destroy
    @category.destroy
    respond_to do |format|
      format.html { redirect_to category_url, notice: 'Category was successfully destroyed.' }
      format.json { head :no_content }
    end
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
   
    def require_admin
      if !(logged_in? && current_user.admin?)
        flash[:alert] = "You are not administrator to create this category"
        redirect_to categories_path
      end
    end
    
    
end