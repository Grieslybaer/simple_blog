module SimpleBlog
  class Comment < ActiveRecord::Base
    belongs_to :article
  end
end
