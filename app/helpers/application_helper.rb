module ApplicationHelper
	# def trending_posts
	# 	likes = Like.where("created_at >= ?", Time.now - 24.hours).select(:liked_id)
	# 	trending = Post.where(id: likes)
	# 	trending.order("COALESCE(likes_count, 0) DESC").limit(3)
	# end
end
