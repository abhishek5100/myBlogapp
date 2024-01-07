class BlogsController < ApplicationController
  def index
    @blogs = Blog.all
  end
  def show 
    @blog = Blog.find(params[:id])
    end
  def new 
   @blog = Blog.new
  end

  def create
    @blog = Blog.new(blog_params)

  if @blog.save
    BlogJob.set(wait: 1.minute).perform_later(@blog)

    redirect_to @blog
 else
    render :new
end
end


def edit 
@blog = Blog.find(params[:id])
end

def update
@blog = Blog.find(params[:id])

if @blog.update(blog_params)
  redirect_to @blog
else
render :index
end
end

def destroy
  @blog = Blog.find(params[:id])
  if @blog.destroy
    redirect_to blogs_path
  else
    render :index
  end
end


private
def blog_params
  params.require(:blog).permit(:tittle, :discription, :heading, :avatar, :author_id)
end
end
