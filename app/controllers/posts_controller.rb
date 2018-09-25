class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update]

  def index
    @posts = Post.order('created_at DESC')
  end

  def show
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to posts_path
    else
      flash[:danger] = @post.errors.full_messages
      render :new
    end
  end

  def edit
  end

  def update
    if @post.update_attributes(post_params)
      redirect_to post_path(@post)
    else
      flash[:danger] = @post.errors.full_messages
      render :edit
    end
  end

  def destroy

  end

  private

  def post_params
    params.require(:post).permit(:title, :story, :image, :when, :image_cache, :remove_image)
  end

  def set_post
    @post = Post.find(params[:id])
  end
end
