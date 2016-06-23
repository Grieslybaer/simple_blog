module SimpleBlog
  class Article < ActiveRecord::Base
    has_many :comments, dependent: :destroy
    belongs_to :user, class_name: SimpleBlog.user_class.to_s

    attr_accessor :user_name
    before_save :set_user

    private
    def set_user
      self.user = SimpleBlog.user_class.find_or_create_by(name: user_name)
    end
  end
end
