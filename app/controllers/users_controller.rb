class UsersController < ApplicationController

    def index
      @Users = User.all
    end

    def show
      @User = User.find(params[:id])
    end

    def new
      User.new
    end

    def create
      User.create(
        name: params[:User][:name]
        )
      redirect_to "/Users"
    end

    def edit
      @User  = User.find(params[:id])
    end

    def update
      User.update(params[:id],
        name: params[:User][:name]
        )
      redirect_to "/Users/"+params[:id]
    end

    def destroy
      User.destroy(params[:id])
      redirect_to "/Users"
    end

end
