module ApplicationHelper

  # I Like facebook button
  def facebook_i_like_button
    %[<div id="fb-root"></div><script src="http://connect.facebook.net/en_US/all.js#appId=227335267297552&amp;xfbml=1"></script><fb:like href="" send="true" width="450" show_faces="true" font=""></fb:like>].html_safe
  end

  def google_plus_one_button
    %{<script type="text/javascript" src="https://apis.google.com/js/plusone.js">
      {lang: 'es-419'}
    </script>

    <g:plusone size="medium"></g:plusone>}.html_safe
  end

  def tweet_button
    %[<a href="http://twitter.com/share" class="twitter-share-button" data-via="bitcoinar" data-count="horizontal" data-lang="es">Tweet</a><script type="text/javascript" src="http://platform.twitter.com/widgets.js"></script>].html_safe
  end

  def facebook_comments
    site_url = "http://www.bitcoin-argentina.com.ar"
    %{<div id="fb-root"></div><script src="http://connect.facebook.net/en_US/all.js#xfbml=1"></script><fb:comments href="#{site_url}#{request.request_uri}" num_posts="2" width="500"></fb:comments>}.html_safe
  end
end
