class Comment < ApplicationRecord
  belongs_to :article # sets up an ActiveRecord association 
end
