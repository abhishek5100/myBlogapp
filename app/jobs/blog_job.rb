class BlogJob < ApplicationJob
  queue_as :default

  def perform(blog)
    blog.update(tittle:"abhishek")
   puts "hello sir"
  end
end
