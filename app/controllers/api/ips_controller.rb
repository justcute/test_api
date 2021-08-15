module Api
  class IpsController < ApplicationController        
    def index
      @ips = Post.all
      @ips = @ips.group_by{|ip| ip[:ip_adress]}.each{|_, v| v.map!{|h| User.find(h[:user_id]).login}}

      render json: @ips
    end
  end
end
