class Blog
  
  @@blog_count = 0
  @@posts = []

  def self.publish_all
    puts "There are #{@@posts.count} posts"
    post_number = 0
    @@posts.each do |print_post|
      puts "Post Number: #{post_number += 1}"
      puts "Post Title: #{print_post.get_title}"
      puts "Post Author: #{print_post.get_author}"
      puts "Post date: #{print_post.get_publish_date}"
      puts "Post: #{print_post.get_content}\n"
    end
  end
  
  def self.add_post(add_post)
    @@blog_count +=1
    @@posts.push(add_post)
  end

end

class Post < Blog
  
  def self.ask_user_for_post
    
    puts "Would you like to enter a new post? Y/N"
    ans = gets.chomp.downcase

    if ans == "y"
      new_blog_post
    else
      publish_all
    end

  end

  def self.new_blog_post

    puts "Please enter the title of the post:"
    post_title = gets.capitalize
    
    puts "Please enter the author of the post:"
    post_author = gets.capitalize
    
    puts "Please enter the post:"
    post_content = gets
    
    new_post = Post.new
    new_post.set_title = post_title
    new_post.set_author = post_author
    new_post.set_content = post_content
    new_post.set_publish_date = Time.now
    
    Blog.add_post(new_post)
    
    ask_user_for_post

  end  
  
  def set_title=(post_title)
    @title = post_title
  end
  
  def get_title
    return @title
  end
  
  def set_content=(post_content)
    @content = post_content
  end
  
  def get_content
    return @content
  end
  
  def set_publish_date=(post_date)
    @publish_date = post_date
  end
  
  def get_publish_date
    return @publish_date
  end
  
  def set_author=(post_author)
    @author = post_author
  end
  
  def get_author
    return @author
  end

end

Post.ask_user_for_post