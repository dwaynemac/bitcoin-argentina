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
    %[<a href="http://twitter.com/share" class="twitter-share-button" data-count="horizontal" data-lang="es">Tweet</a><script type="text/javascript" src="http://platform.twitter.com/widgets.js"></script>].html_safe
  end
end
