class PicsController < ApplicationController
    before_action :find_pic , only: [:show, :update, :edit, :destroy]
    
    
    def index
    end
    
    def show
        
    end
    
    def new
        @pic = Pic.new
    end
    
    def create
        @pic = Pic.new(pic_params)
    
        if @pic.save
            redirect_to @pic, notice: "Yeah ! It's posted."
        else
            render 'new'
        end
    end

    private 
    
    def pic_params
        params.require(:pic).permit(:title, :description)
    end
    
    def find_pic
        @pic = Pic.find(params[:id])
    end

end
