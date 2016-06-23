module SimpleBlog
  SimpleBlog.user_class.class_eval do
    has_many :articles, class_name: SimpleBlog::Article.to_s, foreign_key: "user_id", dependent: :destroy
  end if SimpleBlog.user_class.present?
end