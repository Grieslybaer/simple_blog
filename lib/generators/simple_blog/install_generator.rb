require "rails/generators"
module SimpleBlog
  class InstallGenerator < Rails::Generators::Base
    source_root File.expand_path('../install/templates', __FILE__)
    def add_simple_blog_initializer
      path = "#{Rails.root}/config/initializers/simple_blog.rb"
      if File.exists?(path)
        puts "Skipping initializer (config/initializers/simple_blog.rb), as file already exists!"
      else
        puts "Adding initializer (config/initializers/simple_blog.rb)"
        template "initializer.rb", path
        require path
      end
    end
  end
end
