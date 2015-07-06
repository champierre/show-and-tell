class Project < ActiveRecord::Base

  def youtube_embed_url
    youtube_url =~ /v=(.*)$/
    movie_id = $1
    "<iframe width=\"640\" height=\"360\" src=\"https://www.youtube.com/embed/#{movie_id}?rel=0\" frameborder=\"0\" allowfullscreen></iframe>".html_safe
  end

  def scratch_embed_url
    scratch_url =~ /scratch\.mit\.edu\/projects\/(\d+)\//
    scratch_project_id = $1
    "<iframe allowtransparency=\"true\" width=\"485\" height=\"402\" src=\"//scratch.mit.edu/projects/embed/#{scratch_project_id}/?autostart=false\" frameborder=\"0\" allowfullscreen></iframe>".html_safe
  end
end
