class PostsController < ApplicationController
  before_action :set_post, only: [:edit, :update, :show]

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
  end

  def update
    if @post.update(post_params)
      flash[:success] = "Your post was updated successfully"
      redirect_to post_path(@post)
    else
      render :edit
    end
  end

  def show

  end


  private

    def post_params
      params.require(:post).permit(:title, :summary, :description, :picture, category_ids: [])
    end

    def set_post
      @post = Post.find(params[:id])
    end
end
