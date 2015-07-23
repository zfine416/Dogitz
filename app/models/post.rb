class Post < ActiveRecord::Base
	acts_as_votable
	# def self.default_scope
	# 	order('votes_for.size DESC')
	# end
	default_scope { order(:cached_votes_up => :desc) } 
	belongs_to :user
	has_many :comments
	has_attached_file :image, styles: { medium: "700x500>#", small: "350x250>" }
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
