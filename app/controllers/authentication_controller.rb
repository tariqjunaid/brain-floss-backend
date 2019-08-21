class AuthenticationController < ApplicationController
   def create
      @player = Player.find_by(username: params[:username])
      if @player && @player.authenticate(params[:password])
         payload = {"player_id": @player.id}
         token = encode(payload)
         render json: {
            player: @player,
            token: token,
            authenticated: true
         }
      else
         render json: {
            message: "The username/password you've entered is incorrect.",
            authenticated: false
         }
      end
   end
end
