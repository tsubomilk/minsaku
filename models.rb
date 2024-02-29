require 'bundler/setup'
Bundler.require

ActiveRecord::Base.establish_connection

class Post < ActiveRecord::Base
    has_many :categories
    has_many :comments
end

class Category < ActiveRecord::Base
    belongs_to :post
end

class Comment < ActiveRecord::Base
    belongs_to :post
end