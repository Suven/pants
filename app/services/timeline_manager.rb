class TimelineManager
  # Find the post author's local followers and add the post
  # to each of their timelines.
  #
  def add_post_to_local_timelines(post)
    post.user.followers.hosted.find_each do |follower|
      follower.add_to_timeline(post)
    end
  end
end
