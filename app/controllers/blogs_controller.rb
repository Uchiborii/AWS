class BlogsController < ApplicationController
  def index
    @blogs = Blog.all
  end

  def new
    @blog = Blog.new
  end

  def create
    @blog = current_user.blogs.build(blog_params)
    if @blog.save
      redirect_to blogs_path
    else
      render :new
    end
  end

  def show
    @blog = Blog.find(params[:id])
  end

  def edit
    @blog = Blog.find(params[:id])
  end

def update
  @blog = Blog.find(params[:id])
  if @blog.update(blog_params)
    redirect_to blogs_path, notice: "編集します"
  else
    render :edit
  end
end

def destroy
  @blog = Blog.find(params[:id])

  if @blog.destroy
    redirect_to blogs_path, notice: 'ブログを削除しました。'
  else
    redirect_to blogs_path, alert: 'ブログの削除に失敗しました。'
  end
end

def blog_params
  params.require(:blog).permit(:picture, :content, :picture)
end
end

