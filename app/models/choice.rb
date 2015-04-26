class Choice < ActiveRecord::Base

belongs_to :question
has_many :answers

translates :text

end