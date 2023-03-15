# app/controllers/users_controller.rb
class UsersController < ApplicationController
    def show
      user = User.find(params[:id])
      user_data = {
        id: user.id,
        username: user.username,
        city: user.city,
        items: user.items.map do |item|
          {
            id: item.id,
            name: item.name,
            description: item.description,
            price: item.price
          }
        end
      }
      render json: user_data
    end
  end
  
