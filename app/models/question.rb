class Question < ActiveRecord::Base

has_many :choices

translates :text

end