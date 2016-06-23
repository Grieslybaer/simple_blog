require "decorators"
require "sass-rails"
require "bootstrap-sass"
require "simple_blog/engine"

module SimpleBlog
  mattr_accessor :user_class

  def self.user_class
    @@user_class.constantize if @@user_class.present?
  end
end
