class MenuItemsController < ApplicationController
    def new
    end

    def index
        @menu_items = MenuItem.all
    end

    def create
        uploaded_file = params[:csv_file]
        if uploaded_file.respond_to?(:read)
          MenuItemsImportJob.perform_now(uploaded_file)
          redirect_to root_path, notice: "Menu book upload started. You will be notified when it's complete."
        else
          flash[:alert] = "Please choose a CSV file to upload."
          render :new
        end
    end

end
