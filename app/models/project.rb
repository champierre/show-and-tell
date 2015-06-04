class Project < ActiveRecord::Base

  def youtube_embed_url
    youtube_url =~ /v=(.*)$/
    movie_id = $1
    "<iframe width=\"640\" height=\"360\" src=\"https://www.youtube.com/embed/#{movie_id}?rel=0\" frameborder=\"0\" allowfullscreen></iframe>".html_safe
  end
end
