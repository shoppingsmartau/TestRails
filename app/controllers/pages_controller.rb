class PagesController < ApplicationController
    
    def home
        
             if  !logged_in?
  
               redirect_to root_path
    
             else 
            
               redirect_to articles_path

             end
    end
    
    def about
    end 
    


end