class PostsController < ApplicationController

    def index
      # type = params[:type]
      @posts = Post.all.where(post_category: params[:post_category])
    end

    def show
      @post = Post.find(params[:id])
    end

    def new
      Post.new
    end

    def create
      Post.create(
        title: params[:post][:title],
        image: params[:post][:image],
        content: params[:post][:content],
        post_category: params[:post][:post_category]
        )
      redirect_to "/posts?post_category=#{params[:post][:post_category]}"
    end

    def edit
      @post  = Post.find(params[:id])
    end

    def update
      Post.update(params[:id],
        name: params[:Post][:name]
        )
      redirect_to "/Posts/"+params[:id]
    end

    def destroy
      Post.desroy(params[:id])
      redirect_to "/Posts"
    end

end
