class Movie < ActiveRecord::Base
  has_many :links, as: :linkable
end
