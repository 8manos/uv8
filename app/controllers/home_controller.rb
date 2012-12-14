class HomeController < ApplicationController
  def index
  	require "instagram"

 	@tw_vivas 		= TwitterStatus.new
 	@tw_vivas.user 	= "nataliavivas"
	@av_vivas		= Twitter.user("nataliavivas").profile_image_url.gsub(/_normal(\.gif|\.jpe?g|\.png)$/, "_bigger\\1")
	@tw_vivas		= @tw_vivas.timeline[0].text
	

 	@tw_maria 		= TwitterStatus.new
 	@tw_maria.user 	= "mariaisabelmc"
 	@tw_maria		= @tw_maria.timeline[0].text

  	@tw_sergio 		= TwitterStatus.new
 	@tw_sergio.user = "misterymotion"
 	@tw_sergio		= @tw_sergio.timeline[0].text

 	@tw_ana 		= TwitterStatus.new
 	@tw_ana.user 	= "heyanabelle"
 	@tw_ana			= @tw_ana.timeline[0].text

 	@tw_mantilla 	= TwitterStatus.new
 	@tw_mantilla.user 	= "mantish"
 	@tw_mantilla	= @tw_mantilla.timeline[0].text

 	@medias 		= Instagram.tag_recent_media('uv8people')

  end

end
