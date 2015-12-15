class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      flash[:success] = "Your post was created successfully"
      redirect_to posts_path
    else
      render :new
    end

  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      flash[:success] = "Your post was updated successfully"
      redirect_to post_path(@post)
    else
      render :edit
    end
  end

  def show
    @post = Post.find(params[:id])
  end


  private

    def post_params
      params.require(:post).permit(:title, :summary, :description, :picture)
    end
end
