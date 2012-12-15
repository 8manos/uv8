class HomeController < ApplicationController
  def index
  	require "instagram"

 	@tw_vivas 		= TwitterStatus.new
 	@tw_vivas.user 	= "nataliavivas"
	@av_vivas		= Twitter.user("nataliavivas").profile_image_url.sub("_normal", "")
	@tw_vivas		= @tw_vivas.timeline[0].text
	

 	@tw_maria 		= TwitterStatus.new
 	@tw_maria.user 	= "mariaisabelmc"
 	@av_maria		= Twitter.user("mariaisabelmc").profile_image_url.sub("_normal", "")
 	@tw_maria		= @tw_maria.timeline[0].text

  	@tw_sergio 		= TwitterStatus.new
 	@tw_sergio.user = "misterymotion"
 	@av_sergio		= Twitter.user("misterymotion").profile_image_url.sub("_normal", "")
 	@tw_sergio		= @tw_sergio.timeline[0].text

 	@tw_ana 		= TwitterStatus.new
 	@tw_ana.user 	= "heyanabelle"
 	@av_ana			= Twitter.user("heyanabelle").profile_image_url.sub("_normal", "")
 	@tw_ana			= @tw_ana.timeline[0].text

 	@tw_mantilla 	= TwitterStatus.new
 	@tw_mantilla.user 	= "mantish"
 	@av_mantilla		= Twitter.user("mantish").profile_image_url.sub("_normal", "")
 	@tw_mantilla	= @tw_mantilla.timeline[0].text

 	@medias 		= Instagram.tag_recent_media('uv8people')

  end

end
