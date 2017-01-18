class PostsController < ApplicationController

    def index
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
        title: params[:post][:title],
        image: params[:post][:image],
        content: params[:post][:content],
        post_category: params[:post][:post_category]
        )
      redirect_to "/posts/"+params[:id]
    end

    def destroy
      Post.destroy(params[:id])
      redirect_to "/"
    end

end
