class PlayersController < ApplicationController
   def index
      players = Player.all
      render json: players
   end

   def show
      token = request.headers["Authentication"].split(" ")[1]
      payload = decode(token)
      @player = Player.find(payload["player_id"])
      if @player
         render json: @player, status: :accepted
      else
         render json: {message: "Error", authenticated: false}
      end
   end

   def create        
      @player = Player.new(username: params[:username], password: params[:password])
      if @player.valid?
         @player.save!
         payload = {"player_id": @player.id}
         token = encode(payload)
         render json: {
            player: @player,
            token: token,
            authenticated: true
         }
      else
         render json: {
            message: "Please enter a unique username!",
            authenticated: false
         }
      end  
   end

   def update
      player = Player.find(params[:id])
      player.update(player_params)
      render json: player
   end

   def destroy
      player = Player.find(params[:id])
      player.destroy 
      render json: player
   end

   private

   def player_params
      params.require(:player).permit(:first_name, :last_name, :age, :phone, :username, :password, :email, :bio, :avatar, :cover)
   end
end
