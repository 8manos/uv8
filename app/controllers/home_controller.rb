class HomeController < ApplicationController
  def index
  	@tw_vivas = Twitter.user_timeline("nataliavivas").first.text
  	@tw_maria = Twitter.user_timeline("mariaisabelmc").first.text
  	@tw_sergio = Twitter.user_timeline("misterymotion").first.text
  	@tw_ana = Twitter.user_timeline("heyanabelle").first.text
  	@tw_mantilla = Twitter.user_timeline("mantish").first.text
  end

end
