class Post < ActiveRecord::Base
	acts_as_votable
	default_scope { order(:cached_votes_up => :desc) } 
	belongs_to :user
	has_many :comments
	has_attached_file :image, styles: { medium: "700x500#", small: "350x250#" }
	validates_attachment_content_type :image, :content_type => /^image\/(jpg|jpeg|pjpeg|png|x-png|gif)$/, :message => 'file type is not allowed (only jpeg/png/gif images)'
	validates :image_fingerprint, :uniqueness => {:message => "Sorry. Someone else has already uploaded this exact image"}
	validates :title, length: { maximum: 18,
    too_long: "%{count} characters is the maximum allowed" }
end


